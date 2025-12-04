/*class DateTimeConverter {
  static String? toJson(DateTime? timestamp) {
    if (timestamp == null) return null;
    final millis = timestamp.toUtc().millisecondsSinceEpoch;
    final truncated = DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    return truncated.toIso8601String();
  }

  static DateTime? fromJson(String? timestamp) {
    if (timestamp == null) return null;
    return DateTime.parse(timestamp);
  }
}*/

class DateTimeConverter {
  // Converts DateTime to ISO8601 UTC format
  static String toJson(DateTime timestamp) {
    final millis = timestamp.toUtc().millisecondsSinceEpoch;
    final truncated = DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    return truncated.toIso8601String();
  }

  // Converts JSON string back to DateTime
  static DateTime fromJson(String timestamp) => DateTime.parse(timestamp);
}
