enum LanguageTextAlign {
  left('left'),
  center('center'),
  right('right');

  final String name;

  const LanguageTextAlign(this.name);

  static LanguageTextAlign fromName(String name) {
    return switch (name) {
      "left" => LanguageTextAlign.left,
      "center" => LanguageTextAlign.center,
      "right" => LanguageTextAlign.right,
      _ => LanguageTextAlign.left,
    };
  }
}
