import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AppMotionExtension on Widget {
  Widget stageFadeIn({
    Duration duration = const Duration(milliseconds: 350),
    double beginOffsetY = 0.04,
  }) {
    return animate()
        .fadeIn(duration: duration)
        .slideY(begin: beginOffsetY, end: 0, duration: duration);
  }
}