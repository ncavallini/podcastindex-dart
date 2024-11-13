/// Utils class to provide utility functions.
class Utils {
  /// Convert a [datetime] to UNIX timestamp in seconds.
  static int dateTimeToSeconds(DateTime? datetime) =>
      ((datetime?.millisecondsSinceEpoch ?? 0) ~/ 1000);

  /// Prevent instantiation of the class.
  Utils._();
}
