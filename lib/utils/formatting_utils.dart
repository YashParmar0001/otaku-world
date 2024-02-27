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
    int days = (seconds ~/ (24 * 60 * 60)).abs();
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

  static String getAnimeFormat(Enum$MediaFormat format) {
    switch (format) {
      case Enum$MediaFormat.TV:
        return 'TV Show';
      case Enum$MediaFormat.TV_SHORT:
        return 'TV Short';
      case Enum$MediaFormat.MOVIE:
        return 'Movie';
      case Enum$MediaFormat.SPECIAL:
        return 'Special';
      case Enum$MediaFormat.OVA:
        return 'OVA';
      case Enum$MediaFormat.ONA:
        return 'ONA';
      case Enum$MediaFormat.MUSIC:
        return 'Music';
      default:
        return 'Unknown';
    }
  }

  static String getAnimeStatus(Enum$MediaStatus status) {
    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return 'Airing';
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return 'Not Yet Aired';
      case Enum$MediaStatus.FINISHED:
        return 'Finished';
      case Enum$MediaStatus.CANCELLED:
        return 'Cancelled';
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
