import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter({
    required this.context,
    required this.dateTime,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Minute Calculation
    double minX =
        centerX + size.width * .35 * cos((dateTime.minute * 6) * pi / 180);
    double minY =
        centerY + size.width * .35 * sin((dateTime.minute * 6) * pi / 180);

    // Minute Line
    canvas.drawLine(
      center,
      Offset(minX, minY),
      Paint()
        ..color = Theme.of(context).accentColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Second Calculation
    // dateTime.hour * 30  because 360/12 = 30
    // dateTime.minute * .5 each minute we want to turn our hour line a little
    double hourX = centerX +
        size.width *
            .3 *
            cos((dateTime.hour * 30 + dateTime.minute * .5) * pi / 180);
    double hourY = centerY +
        size.width *
            .3 *
            sin((dateTime.hour * 30 + dateTime.minute * .5) * pi / 180);

    // Hour Line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Second Calculation
    // size.width * .4 define our line height
    // dateTime.second * 6 because 360 / 60 = 6
    double secondX =
        centerX + size.width * .4 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerY + size.width * .4 * sin((dateTime.second * 6) * pi / 180);

    // Second Line
    canvas.drawLine(
      center,
      Offset(secondX, secondY),
      Paint()..color = Theme.of(context).primaryColor,
    );

    // center Dots
    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color!;

    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
