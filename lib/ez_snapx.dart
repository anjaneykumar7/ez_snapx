library ez_snapx;

/// A Calculator
import 'package:flutter/material.dart';

extension PaddingExtension on num {
  EdgeInsets get p => EdgeInsets.all(toDouble());
  EdgeInsets get hp => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get vp => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get bp => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get tp => EdgeInsets.only(top: toDouble());
  EdgeInsets get rp => EdgeInsets.only(right: toDouble());
  EdgeInsets get lp => EdgeInsets.only(left: toDouble());
}

extension WidthHeightExtension on num {
  SizedBox get w => SizedBox(width: toDouble());
  SizedBox get h => SizedBox(height: toDouble());
}

extension TimeConversionExtension on int {
  Duration get microseconds => Duration(microseconds: this);
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);

  String generateLoremIpsum() {
    String loremIpsum = "";
    for (int i = 0; i < this; i++) {
      if (i != 0) {
        loremIpsum += "\n\n";
      }
      loremIpsum +=
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc sapien ultricies nunc, vitae aliquam nisi nisl vitae nunc. Donec euismod, nisl eget aliquam ultricies, nunc sapien ultricies nunc.";
    }
    return loremIpsum;
  }
}

extension ConvertMinutesToHours on int {
  String convertToReadableTime({int threshold = 60}) {
    if (this < threshold) {
      return '$this mins';
    } else {
      int hours = (this / 60).floor();
      int minutes = this % 60;
      if (minutes == 0) {
        return '$hours hours';
      } else {
        return '$hours hours $minutes mins';
      }
    }
  }
}

extension DateTimeExtension on DateTime {
  String timeAgo({bool numericDates = true}) {
    final date2 = DateTime.now();
    final difference = date2.difference(this);

    if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}

extension IndianNumberFormatting on String {
  String formatIndianNumber() {
    if (isEmpty) {
      return '';
    }
    String value = replaceAll(',', '');
    final reversedValue = value.split('').reversed.join();
    final chunks = List<String>.generate(
        (reversedValue.length / 3).ceil(),
        (i) => reversedValue.substring(
            i * 3,
            (i + 1) * 3 < reversedValue.length
                ? (i + 1) * 3
                : reversedValue.length));
    final formattedValue = chunks.join(',').split('').reversed.join();
    return formattedValue;
  }

  int parseIndianNumber() {
    if (isEmpty) {
      return 0;
    }
    final value = replaceAll(',', '');
    return int.tryParse(value) ?? 0;
  }

  String get toTitleCase {
    return split('_').map((word) {
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  String get toUpperCase {
    return split(' ').map((word) {
      return word.toLowerCase();
    }).join('_');
  }
}
