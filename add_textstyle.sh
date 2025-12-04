#!/usr/bin/env bash
# add_text_style.sh
# Usage: ./add_text_style.sh textStyleName

set -euo pipefail

TEXT_STYLE_NAME="${1:-}"

APP_TEXT_THEME_FILE="lib/src/theme/modes/app_text_theme.dart"
EN_PORTRAIT_FILE="lib/src/theme/en/en_portrait.dart"

if [[ -z "$TEXT_STYLE_NAME" ]]; then
  echo "Usage: $0 <textStyleName>"
  exit 1
fi

if [[ ! -f "$APP_TEXT_THEME_FILE" || ! -f "$EN_PORTRAIT_FILE" ]]; then
  echo "Cannot find $APP_TEXT_THEME_FILE or $EN_PORTRAIT_FILE"
  exit 1
fi

# --- Backups (once) ---
[[ -f "${APP_TEXT_THEME_FILE}.bak" ]] || cp "$APP_TEXT_THEME_FILE" "${APP_TEXT_THEME_FILE}.bak"
[[ -f "${EN_PORTRAIT_FILE}.bak" ]] || cp "$EN_PORTRAIT_FILE" "${EN_PORTRAIT_FILE}.bak"

# --- 1) Add final field in AppTextTheme (before displayD1) ---
if ! grep -qE "^\s*final\s+TextStyle\s+$TEXT_STYLE_NAME;" "$APP_TEXT_THEME_FILE"; then
  sed -i "/final TextStyle displayD1;/i\  final TextStyle $TEXT_STYLE_NAME;\n" "$APP_TEXT_THEME_FILE"
fi

# --- 2) Add required param in AppTextTheme constructor (before displayD1) ---
if ! grep -q "required this.$TEXT_STYLE_NAME" "$APP_TEXT_THEME_FILE"; then
  sed -i "/required this.displayD1,/i\    required this.$TEXT_STYLE_NAME," "$APP_TEXT_THEME_FILE"
fi

# --- 3) Add parameter in copyWith signature (before displayD1) ---
if ! grep -qE "TextStyle\?\s+$TEXT_STYLE_NAME," "$APP_TEXT_THEME_FILE"; then
  # Try multiple patterns to find displayD1 parameter
  if grep -q "TextStyle? displayD1" "$APP_TEXT_THEME_FILE"; then
    sed -i "/TextStyle? displayD1/i\    TextStyle\? $TEXT_STYLE_NAME," "$APP_TEXT_THEME_FILE"
    echo "✓ Added parameter in copyWith signature"
  elif grep -q "displayD1," "$APP_TEXT_THEME_FILE"; then
    # Find the line with displayD1, in the parameters section
    sed -i "/AppTextTheme copyWith({/,/}) {/ { /displayD1,/i\    TextStyle\? $TEXT_STYLE_NAME,
    }" "$APP_TEXT_THEME_FILE"
    echo "✓ Added parameter in copyWith signature (found displayD1,)"
  else
    echo "⚠️  Could not find displayD1 parameter line to insert before"
  fi
else
  echo "✓ Parameter already exists in copyWith signature"
fi

# --- 4) Add in copyWith return block (before displayD1) ---
if ! grep -qE "^\s*$TEXT_STYLE_NAME:\s+$TEXT_STYLE_NAME\s+\?\?\s+this\.$TEXT_STYLE_NAME," "$APP_TEXT_THEME_FILE"; then
  sed -i "/displayD1: displayD1 ?? this.displayD1,/i\      $TEXT_STYLE_NAME: $TEXT_STYLE_NAME ?? this.$TEXT_STYLE_NAME," "$APP_TEXT_THEME_FILE"
fi

# --- 5) Add in lerp return block (before displayD1) ---
if ! grep -qE "^\s*$TEXT_STYLE_NAME:\s+TextStyle\.lerp\($TEXT_STYLE_NAME,\s+other\.$TEXT_STYLE_NAME,\s+t\)!," "$APP_TEXT_THEME_FILE"; then
  sed -i "/displayD1: TextStyle.lerp(displayD1, other.displayD1, t)!,/i\      $TEXT_STYLE_NAME: TextStyle.lerp($TEXT_STYLE_NAME, other.$TEXT_STYLE_NAME, t)!," "$APP_TEXT_THEME_FILE"
fi

# --- 6) EnPortrait: add private getter (before _displayD1) ---
if ! grep -qE "TextStyle\s+get\s+_$TEXT_STYLE_NAME\s*=>" "$EN_PORTRAIT_FILE"; then
  sed -i "/TextStyle get _displayD1/i\  // TODO: Configure font properties for $TEXT_STYLE_NAME\n  TextStyle get _$TEXT_STYLE_NAME => GoogleFonts.alexandria();\n" "$EN_PORTRAIT_FILE"
fi

# --- 7) EnPortrait: add mapping in getAppTextTheme (before displayD1) ---
if ! grep -qE "^\s*$TEXT_STYLE_NAME:\s*_$TEXT_STYLE_NAME," "$EN_PORTRAIT_FILE"; then
  sed -i "/displayD1: _displayD1,/i\      $TEXT_STYLE_NAME: _$TEXT_STYLE_NAME," "$EN_PORTRAIT_FILE"
fi

echo "✅ Added/fixed $TEXT_STYLE_NAME in:"
echo "   - $APP_TEXT_THEME_FILE (field, constructor, copyWith, lerp)"
echo "   - $EN_PORTRAIT_FILE (private getter, getAppTextTheme)"