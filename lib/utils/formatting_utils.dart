import 'package:intl/intl.dart';

class FormattingUtils {
  static String formatDurationFromMilliseconds(int milliseconds) {
    // Convert milliseconds to seconds
    int totalSeconds = milliseconds ~/ 1000;

    // Calculate the number of days, hours, and minutes
    int days = totalSeconds ~/ (24 * 60 * 60);
    int hours = (totalSeconds % (24 * 60 * 60)) ~/ (60 * 60);
    int minutes = (totalSeconds % (60 * 60)) ~/ 60;

    // Format the duration in 'dd:hh:mm' format
    return '${days.toString().padLeft(2, '0')}:${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  static String formatDurationFromSeconds(int seconds) {
    // Calculate the number of days, hours, and minutes
    int days = seconds ~/ (24 * 60 * 60);
    int hours = (seconds % (24 * 60 * 60)) ~/ (60 * 60);
    int minutes = (seconds % (60 * 60)) ~/ 60;

    String duration = '';
    if (days > 0) {
      duration += '${days.toString()}d ';
    }
    if (hours > 0) {
      duration += '${hours.toString()}h ';
    }
    duration += '${minutes.toString()}m';
    return duration;
  }

  static String formatDurationFromSecondsBefore(int seconds) {
    // Calculate the number of days, hours, and minutes
    int days = seconds ~/ (24 * 60 * 60);
    int hours = 23 - (seconds % (24 * 60 * 60)) ~/ (60 * 60);
    int minutes = 59 - (seconds % (60 * 60)) ~/ 60;

    String duration = '';
    if (days > 0) {
      duration += '${days.toString()}d ';
    }
    if (hours > 0) {
      duration += '${hours.toString()}h ';
    }
    duration += '${minutes.toString()}m';
    return duration;
  }

  static int getUnixTimeStampFromDate(DateTime date) {
    return date.millisecondsSinceEpoch ~/ 1000;
  }

  static String formatTimeFromMilliseconds(int milliseconds) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(milliseconds * 1000);

    return DateFormat('hh:mm a').format(time);
  }

  static String formatUnixTimestamp(int unixTimestamp) {
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
    String formattedDate = DateFormat('E, d MMM yyyy').format(dateTime);
    String formattedTime = DateFormat('h:mm a').format(dateTime);
    return '$formattedDate at $formattedTime';
  }

  static int getYearFromTimestamp(int unixTimestamp) {
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
    return dateTime.year;
  }
}
