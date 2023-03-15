import 'package:dash_app/Theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: Provider.of<ThemeManager>(context).isDarkMode,
          onChanged: (value) {
            Provider.of<ThemeManager>(context,listen: false).changeTheme(value);
          },
        ),
      ),
    );
  }
}
