import 'dart:math';
import 'package:flutter/material.dart';

class AnalogClockPainter extends CustomPainter {
  final DateTime time;

  AnalogClockPainter(this.time);

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2;
    final paintCircle = Paint()..color = Color.fromARGB(255, 180, 251, 255);

    // Draw clock face
    canvas.drawCircle(center, radius, paintCircle);

    // Paint hands
    final paintHand = Paint()
      ..color = Colors.teal
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    // Calculate angles
    final hourAngle = (time.hour % 12 + time.minute / 60) * 30 * pi / 180;
    final minuteAngle = (time.minute + time.second / 60) * 6 * pi / 180;
    final secondAngle = time.second * 6 * pi / 180;

    // Draw hands
    canvas.drawLine(
        center,
        center +
            Offset(cos(hourAngle - pi / 2) * radius * 0.5,
                sin(hourAngle - pi / 2) * radius * 0.5),
        paintHand);
    canvas.drawLine(
        center,
        center +
            Offset(cos(minuteAngle - pi / 2) * radius * 0.7,
                sin(minuteAngle - pi / 2) * radius * 0.7),
        paintHand);

    // Second hand (optional)
    final paintSecondHand = Paint()
      ..color = Colors.red
      ..strokeWidth = 2;

    canvas.drawLine(
        center,
        center +
            Offset(cos(secondAngle - pi / 2) * radius * 0.8,
                sin(secondAngle - pi / 2) * radius * 0.8),
        paintSecondHand);
  }

  @override
  bool shouldRepaint(AnalogClockPainter oldDelegate) => true;
}
