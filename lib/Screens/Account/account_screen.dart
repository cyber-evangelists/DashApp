import 'package:dash_app/Screens/Account/ui/profile_card.dart';
import 'package:dash_app/Screens/Account/ui/setting_type.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Account',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          20.ph,
          const ProfileCard(),
          24.ph,
          const SettingType(),
        ],
      ),
    );
  }
}
