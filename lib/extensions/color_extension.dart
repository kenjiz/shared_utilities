import 'package:flutter/material.dart';

extension ColorX on Color {
  Color get invert => computeLuminance() > 0.5 ? Colors.black87 : Colors.white70;
}
