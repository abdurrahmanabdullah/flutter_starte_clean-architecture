#!/usr/bin/env bash
# add_color.sh
# Usage: ./add_color.sh primaryColorTest 0xFF123456

set -euo pipefail

COLOR_NAME="${1:-}"
COLOR_VALUE="${2:-}"

APP_COLORS_FILE="lib/src/theme/modes/app_colors.dart"
LIGHT_THEME_FILE="lib/src/theme/modes/light_theme.dart"

if [[ -z "$COLOR_NAME" || -z "$COLOR_VALUE" ]]; then
  echo "Usage: $0 <colorName> <colorValue e.g., 0xFF123456>"
  exit 1
fi

if [[ ! -f "$APP_COLORS_FILE" || ! -f "$LIGHT_THEME_FILE" ]]; then
  echo "Cannot find $APP_COLORS_FILE or $LIGHT_THEME_FILE"
  exit 1
fi

# --- Backups (once) ---
[[ -f "${APP_COLORS_FILE}.bak" ]] || cp "$APP_COLORS_FILE" "${APP_COLORS_FILE}.bak"
[[ -f "${LIGHT_THEME_FILE}.bak" ]] || cp "$LIGHT_THEME_FILE" "${LIGHT_THEME_FILE}.bak"

# --- 1) Add final field in AppColors (before first known field) ---
if ! grep -qE "^\s*final\s+Color\s+$COLOR_NAME;" "$APP_COLORS_FILE"; then
  sed -i "/^\s*final\s\+Color\s\+baseWhite;/i\  final Color $COLOR_NAME;" "$APP_COLORS_FILE"
fi

# --- 2) Add required param in AppColors constructor ---
if ! grep -q "required this.$COLOR_NAME" "$APP_COLORS_FILE"; then
  sed -i "/^\s*const\s\+AppColors({/a\    required this.$COLOR_NAME," "$APP_COLORS_FILE"
fi

# --- 3) Add parameter in copyWith signature ---
if ! grep -qE "AppColors\s+copyWith\(\{[^}]*Color\?\s+$COLOR_NAME," "$APP_COLORS_FILE"; then
  sed -i "/^\s*AppColors\s\+copyWith({/a\    Color\? $COLOR_NAME," "$APP_COLORS_FILE"
fi

# --- 4) Fix copyWith & lerp bodies (insert correctly; remove wrong leftovers) ---
awk -v cname="$COLOR_NAME" '
BEGIN {
  in_copy=0; in_lerp=0;
  inserted_copy=0; inserted_lerp=0;
  found_copy=0; found_lerp=0;
}
{
  # Block starts
  if ($0 ~ /AppColors[[:space:]]+copyWith[[:space:]]*\(/) { in_copy=1; in_lerp=0; }
  if ($0 ~ /ThemeExtension[[:space:]]*<[[:space:]]*AppColors[[:space:]]*>[[:space:]]+lerp[[:space:]]*\(/) { in_lerp=1; in_copy=0; }

  # Detect existing correct lines to avoid duplicates
  if (in_copy && $0 ~ "^[[:space:]]*" cname ":[[:space:]]*" cname "[[:space:]]*\\?\\?[[:space:]]*this\\." cname ",") { found_copy=1; }
  if (in_lerp && $0 ~ "^[[:space:]]*" cname ":[[:space:]]*Color\\.lerp\\(" cname ",[[:space:]]*other\\." cname ",[[:space:]]*t\\)!,") { found_lerp=1; }

  # Cleanup wrong lines from previous runs
  if (in_copy && $0 ~ "^[[:space:]]*" cname ":[[:space:]]*Color\\.lerp\\(") { next; }
  if (in_lerp && $0 ~ "^[[:space:]]*" cname ":[[:space:]]*" cname "[[:space:]]*\\?\\?[[:space:]]*this\\." cname ",") { next; }

  # Insert at the right return AppColors(...) in each specific block
  if (in_copy && $0 ~ /return[[:space:]]+AppColors[[:space:]]*\(/ && !inserted_copy && !found_copy) {
    print $0;
    printf("      %s: %s ?? this.%s,\n", cname, cname, cname);
    inserted_copy=1;
    next;
  }
  if (in_lerp && $0 ~ /return[[:space:]]+AppColors[[:space:]]*\(/ && !inserted_lerp && !found_lerp) {
    print $0;
    printf("      %s: Color.lerp(%s, other.%s, t)!,\n", cname, cname, cname);
    inserted_lerp=1;
    next;
  }

  print $0;
}
' "$APP_COLORS_FILE" > "${APP_COLORS_FILE}.tmp" && mv "${APP_COLORS_FILE}.tmp" "$APP_COLORS_FILE"

# --- 5) LightTheme: add private getter ---
if ! grep -qE "Color\s+get\s+_$COLOR_NAME\s*=>" "$LIGHT_THEME_FILE"; then
  sed -i "/Color get _baseWhite/a\  Color get _$COLOR_NAME => const Color($COLOR_VALUE);" "$LIGHT_THEME_FILE"
fi

# --- 6) LightTheme: add mapping in getAppColors ---
if ! grep -qE "^\s*$COLOR_NAME:\s*_$COLOR_NAME," "$LIGHT_THEME_FILE"; then
  sed -i "/AppColors get getAppColors => AppColors(/a\    $COLOR_NAME: _$COLOR_NAME," "$LIGHT_THEME_FILE"
fi

echo "✅ Added/fixed $COLOR_NAME ($COLOR_VALUE) in:"
echo "   - $APP_COLORS_FILE (field, constructor, copyWith, lerp)"
echo "   - $LIGHT_THEME_FILE (private getter, getAppColors)"
