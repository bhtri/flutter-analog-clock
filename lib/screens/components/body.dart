import 'package:analog_clock/const/resource.dart';
import 'package:analog_clock/screens/components/clock.dart';
import 'package:analog_clock/screens/components/country_card.dart';
import 'package:analog_clock/screens/components/time_in_hour_and_minute.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.config,
  }) : super(key: key);

  final SizeConfig config;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Newport Beach, USA | PST',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    config: config,
                    country: 'New York, USA',
                    timeZone: '+3 HRS | EST',
                    iconSrc: R.ASSETS_ICONS_LIBERTY_SVG,
                    time: '9:20',
                    period: 'AM',
                  ),
                  CountryCard(
                    config: config,
                    country: 'Sydney, AU',
                    timeZone: '+19 HRS | AEST',
                    iconSrc: R.ASSETS_ICONS_SYDNEY_SVG,
                    time: '1:20',
                    period: 'PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
