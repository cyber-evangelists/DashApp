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
    final provider = Provider.of<ThemeManager>(context);
    return Scaffold(
      body: Center(
        child: Switch(
            value: provider.themeMode == ThemeMode.dark ? true : false,
            onChanged: (_) => context.read<ThemeManager>().toggleTheme()),
      ),
    );
  }
}
