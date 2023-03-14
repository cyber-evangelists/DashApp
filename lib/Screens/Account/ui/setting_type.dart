import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class SettingType extends StatelessWidget {
  final String title;
  const SettingType({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = getDeviceWidth(context);
    return Container(
      width: 375 * deviceWidth,
      height: 36 * deviceWidth,
      color: const Color.fromRGBO(236, 240, 240, 1),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
            color: Color.fromRGBO(156, 158, 158, 1),
            fontWeight: FontWeight.w500,
            fontSize: 13.0,
            letterSpacing: 2.0),
      ),
    );
  }
}
