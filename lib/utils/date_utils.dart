import 'package:intl/intl.dart';

class DateHelper {
  static DateFormats(DateTime date) {
    String result = '';
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    result = formatter.format(date);
    return result;
  }

  static TimeFormat(DateTime date) {
    String result = '';
    final DateFormat formatter = DateFormat('hh : mm a');
    result = formatter.format(date);
    return result;
  }

  static liveDetailsDateTime(DateTime date) {
    String result = '';
    final DateFormat formatter = DateFormat('dd MMM hh : mm a');
    result = formatter.format(date);
    return result;
  }

  static String durationRemainingToParticularTime(DateTime time) {
    Duration duration = time.difference(DateTime.now());
    String result = '';
    if (duration.inDays > 0) {
      result = '${duration.inDays} days';
    } else if (duration.inHours > 0) {
      result = '${duration.inHours} hours';
    } else if (duration.inMinutes > 0) {
      result = '${duration.inMinutes} minutes';
    } else if (duration.inSeconds > 0) {
      result = '${duration.inSeconds} seconds';
    }
    return result;
  }

  static String convertToAgo(DateTime input) {
    Duration diff = DateTime.now().difference(input);

    if (diff.inDays >= 1) {
      return '${diff.inDays} days ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hours ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} seconds ago';
    } else {
      return 'just now';
    }
  }
}

extension DateUtils on DateTime {
  String get dateTimeString {
    Map<int, String> monthNames = {
      1: 'Jan',
      2: 'Feb',
      3: 'Mar',
      4: 'Apr',
      5: 'May',
      6: 'Jun',
      7: 'Jul',
      8: 'Aug',
      9: 'Sep',
      10: 'Oct',
      11: 'Nov',
      12: 'Dec',
    };
    return "${"${this.day}".padLeft(2, '0')} ${monthNames[this.month]} ${this.year} ${"${this.hour}".padLeft(2, '0')}:${"${this.minute}".padLeft(2, '0')}";
  }

  String get dateTimeStringInAmPm {
    Map<int, String> monthNames = {
      1: 'Jan',
      2: 'Feb',
      3: 'Mar',
      4: 'Apr',
      5: 'May',
      6: 'Jun',
      7: 'Jul',
      8: 'Aug',
      9: 'Sep',
      10: 'Oct',
      11: 'Nov',
      12: 'Dec',
    };
    return "${"${this.day}".padLeft(2, '0')} ${monthNames[this.month]} ${this.year} ${"${this.hour % 12}".padLeft(2, '0')}:${"${this.minute}".padLeft(2, '0')} ${this.hour > 12 ? 'PM' : 'AM'}";
  }

  String get dateString {
    Map<int, String> monthNames = {
      1: 'Jan',
      2: 'Feb',
      3: 'Mar',
      4: 'Apr',
      5: 'May',
      6: 'Jun',
      7: 'Jul',
      8: 'Aug',
      9: 'Sep',
      10: 'Oct',
      11: 'Nov',
      12: 'Dec',
    };
    return "${this.day} ${monthNames[this.month]} ${this.year}";
  }
}
