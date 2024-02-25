import 'dart:ui';

import 'package:intl/intl.dart';

import '../graphql/__generated/graphql/schema.graphql.dart';
import '../theme/colors.dart';

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

    // Format the duration in 'dd:hh:mm' format
    return '${days.toString()}d ${hours.toString()}h ${minutes.toString()}m';
  }

  static String formatDurationFromSecondsBefore(int seconds) {
    // Calculate the number of days, hours, and minutes
    int days = (seconds ~/ (24 * 60 * 60)).abs();
    int hours = 23 - (seconds % (24 * 60 * 60)) ~/ (60 * 60);
    int minutes = 59 - (seconds % (60 * 60)) ~/ 60;

    // Format the duration in 'dd:hh:mm' format
    return '${days.toString()}d ${hours.toString()}h ${minutes.toString()}m';
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

  static String getSeason(Enum$MediaSeason? season) {
    if (season == null) return 'Unknown';

    switch (season) {
      case Enum$MediaSeason.FALL:
        return 'Fall';
      case Enum$MediaSeason.SPRING:
        return 'Spring';
      case Enum$MediaSeason.SUMMER:
        return 'Summer';
      case Enum$MediaSeason.WINTER:
        return 'Winter';
      default:
        return 'Unknown';
    }
  }
  static Color getSelectMediaCardColors({
    required int index,
  }) {
    switch (index) {
      case 0:
        return AppColors.gold;
      case 1:
        return AppColors.silver;
      case 2:
        return AppColors.bronze;
      default:
        if (index % 3 == 0) {
          return AppColors.sunsetOrange;
        } else if (index % 3 == 1) {
          return AppColors.trueBlue;
        } else {
          return AppColors.kiwi;
        }
    }
  }
}
