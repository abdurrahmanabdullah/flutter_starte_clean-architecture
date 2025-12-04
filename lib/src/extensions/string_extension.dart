extension StringExtensions on String {
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String capitalizeFirstLetterOfWord() {
    if (isEmpty) return this;
    var list = split(' ');
    for (var i = 0; i < list.length; i++) {
      String value = list[i];
      value = value[0].toUpperCase() + value.substring(1);
      list[i] = value;
    }
    return list.join(' ');
  }

  // Color toHexColor() {
  //   try {
  //     String hexColor = toUpperCase().replaceAll("#", "");
  //     if (hexColor.length == 6) {
  //       hexColor = "FF$hexColor";
  //     }
  //     return Color(int.parse(hexColor, radix: 16));
  //   } catch (e) {
  //     return UiConstants.shared.defaultFontColor;
  //   }
  // }

  String toValidString() {
    return isEmpty ? 'N/A' : this;
  }
}
