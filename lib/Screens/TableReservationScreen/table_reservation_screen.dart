import 'package:dash_app/Screens/TableReservationScreen/ui/top_card.dart';
import 'package:dash_app/Theme/theme.dart';
import 'package:dash_app/Theme/theme_manager.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableResevationScreen extends StatelessWidget {
  const TableResevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = getDeviceWidth(context);
    final provider = context.watch<ThemeManager>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0.0,
        title: const Text(
          'Table Reservation',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: provider.isDarkMode,
            onChanged: (value) {
              provider.changeTheme(value);
            },
          ),
        ],
      ),
      body: Column(
        children: const [TableReservationScreenTopcard()],
      ),
    ); //git
  }
}
