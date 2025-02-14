import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/AnalogClockPainter.dart';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  late DateTime _time;

  @override
  void initState() {
    super.initState();
    _time = DateTime.now();

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _time = DateTime.now();
      });
    });
  }

  String getGreeting() {
    int hour = _time.hour;
    if (hour < 12) return "Good Morning";
    if (hour < 18) return "Good Afternoon";
    return "Good Night";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              getGreeting(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: -6,
                offset: Offset(0, 7)),
          ]),
          child: CustomPaint(
            size: Size(120, 120),
            painter: AnalogClockPainter(_time),
          ),
        )
      ],
    );
  }
}
