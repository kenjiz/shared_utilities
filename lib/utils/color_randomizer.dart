import 'dart:math';
import 'dart:ui';

class ColorRandomizer {
  const ColorRandomizer._();
  static Color get random {
    final random = Random();
    return Color.fromARGB(
      255, // Full opacity
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }
}
