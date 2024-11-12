class Utils {
  static int dateTimeToSeconds(DateTime? datetime) =>
      ((datetime?.millisecondsSinceEpoch ?? 0) ~/ 1000);
}
