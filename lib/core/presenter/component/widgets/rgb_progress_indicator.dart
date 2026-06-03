import 'dart:math';
import 'package:flutter/material.dart';

class RGBProgressIndicator extends StatefulWidget {
  const RGBProgressIndicator({super.key});

  @override
  _RGBProgressIndicatorState createState() => _RGBProgressIndicatorState();
}

class _RGBProgressIndicatorState extends State<RGBProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorTween;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();

    _colorTween = _controller.drive(
      ColorTween(begin: Colors.red, end: Colors.blue)
        ..chain(
          CurveTween(curve: Curves.linear),
        ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _getRGBColor(double value) {
    // Loop RGB colors based on the animation value
    final red = (sin(value * 2 * pi) * 127 + 128).toInt();
    final green = (sin((value + 0.33) * 2 * pi) * 127 + 128).toInt();
    final blue = (sin((value + 0.66) * 2 * pi) * 127 + 128).toInt();
    return Color.fromARGB(255, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            _getRGBColor(_controller.value),
          ),
          strokeWidth: 6,
        );
      },
    );
  }
}