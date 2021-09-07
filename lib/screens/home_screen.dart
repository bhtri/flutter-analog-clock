import 'package:analog_clock/const/resource.dart';
import 'package:analog_clock/screens/components/body.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);

    return Scaffold(
      appBar: buildAppBar(context, sizeConfig),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context, SizeConfig sizeConfig) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          R.ASSETS_ICONS_SETTINGS_SVG,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      actions: [
        buildAddButton(sizeConfig, context),
      ],
    );
  }

  Padding buildAddButton(SizeConfig sizeConfig, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: sizeConfig.getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
