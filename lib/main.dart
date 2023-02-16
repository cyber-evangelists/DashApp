import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/Screens/add_guest_on_table_screen.dart';
import 'package:dash_app/Screens/intersted_screen.dart';
import 'package:dash_app/Screens/resturent_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen()
    );
  }
}
