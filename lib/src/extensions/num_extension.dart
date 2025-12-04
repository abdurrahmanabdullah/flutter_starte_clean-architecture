extension CleanDoubleFormat on double {
  String toCleanString() => this % 1 == 0 ? toInt().toString() : toString();
}
