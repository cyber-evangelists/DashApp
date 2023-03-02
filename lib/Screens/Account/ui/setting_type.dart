import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class SettingType extends StatelessWidget {
  const SettingType({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = getDeviceWidth(context);
    return Container(
      width: 375 * deviceWidth,
      height: 36 * deviceWidth,
      color: const Color.fromRGBO(236, 240, 240, 1),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0),
      child: Text('Content'),
    );
  }
}
