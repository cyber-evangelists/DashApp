import 'package:dash_app/Screens/TableReservationScreen/ui/top_card.dart';
import 'package:flutter/material.dart';

class TableResevationScreen extends StatelessWidget {
  const TableResevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      ),
      body: const Column(
        children: [TableReservationScreenTopcard()],
      ),
    ); //git
  }
}
