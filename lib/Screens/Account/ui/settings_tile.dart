import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData leadingIcon;
  final void Function()? onTap;
  final String title;
  const SettingsTile(
      {super.key, required this.leadingIcon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
