import 'package:analog_clock/screens/components/clock.dart';
import 'package:analog_clock/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Newport Beach, USA | PST',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Clock(),
        ],
      ),
    );
  }
}
