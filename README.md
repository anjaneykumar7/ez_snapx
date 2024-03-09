
# ez_snapx

`ez_snapx` is a Flutter package that simplifies common development tasks related to padding, time conversion, and various extensions for enhanced functionality. The package provides intuitive shortcut methods and extensions to streamline your Flutter app development.

## Features

### Padding Extensions

- `p`: Creates EdgeInsets with padding on all sides.
- `hp`: Creates EdgeInsets with horizontal padding.
- `vp`: Creates EdgeInsets with vertical padding.
- `bp`: Creates EdgeInsets with padding only at the bottom.
- `tp`: Creates EdgeInsets with padding only at the top.
- `rp`: Creates EdgeInsets with padding only on the right.
- `lp`: Creates EdgeInsets with padding only on the left.

  **Example:**

  ```dart
  import 'package:flutter/material.dart';
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    runApp(
      Container(
        padding: 16.p,
        child: Text(
          'Hello, ez_snapx!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
  ```

### Size Extensions

- `w`: Creates SizedBox with a specified width.
- `h`: Creates SizedBox with a specified height.

  **Example:**

  ```dart
  import 'package:flutter/material.dart';
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    runApp(
      Container(
        child: Image.network(
          'https://example.com/image.jpg',
          width: 200.w,
          height: 150.h,
        ),
      ),
    );
  }
  ```

### Time Conversion Extensions

- `microseconds`: Converts an integer to Duration in microseconds.
- `milliseconds`: Converts an integer to Duration in milliseconds.
- `seconds`: Converts an integer to Duration in seconds.
- `minutes`: Converts an integer to Duration in minutes.
- `hours`: Converts an integer to Duration in hours.
- `days`: Converts an integer to Duration in days.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final duration = 30.seconds;
    print('Duration in seconds: $duration');
  }
  ```

### Lorem Ipsum Generator

- `generateLoremIpsum`: Generates Lorem Ipsum text based on the specified count.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final loremIpsum = 2.generateLoremIpsum();
    print(loremIpsum);
  }
  ```

### Time Formatting

- `convertToReadableTime`: Converts an integer representing minutes into a human-readable time format.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final time = 90.convertToReadableTime();
    print('Readable time: $time');
  }
  ```

### DateTime Extensions

- `timeAgo`: Provides a human-readable representation of the time elapsed since a given DateTime.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final dateTime = DateTime.now().subtract(Duration(hours: 2));
    final timeAgo = dateTime.timeAgo();
    print('Time ago: $timeAgo');
  }
  ```

### Indian Number Formatting

- `formatIndianNumber`: Formats a string representing an Indian-style number with commas.
- `parseIndianNumber`: Parses a string representing an Indian-style number into an integer.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final formattedNumber = '1234567'.formatIndianNumber();
    print('Formatted number: $formattedNumber');
  }
  ```

### String Manipulations

- `toTitleCase`: Converts a snake_case string to Title Case.
- `toUpperCase`: Converts a string to snake_case.

  **Example:**

  ```dart
  import 'package:ez_snapx/ez_snapx.dart';

  void main() {
    final titleCaseString = 'hello_world'.toTitleCase;
    print('Title case: $titleCaseString');
  }
  ```

## Getting Started

1. Add the `ez_snapx` dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     ez_snapx: ^1.0.0
   ```

   Replace `^1.0.0` with the latest version available.

2. Run `flutter pub get` in your terminal to install the package.

3. Import `ez_snapx` in your Dart file:

   ```dart
   import 'package:ez_snapx/ez_snapx.dart';
   ```

4. Start using the provided extensions and methods to enhance your Flutter app development.

## Contributions

Contributions to `ez_snapx` are welcome! If you have suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License

`ez_snapx` is released under the [MIT License](LICENSE).