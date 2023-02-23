import 'package:dash_app/Screens/ResturantScreen/ui/back_button.dart';
import 'package:dash_app/Screens/ResturantScreen/ui/menu_item_card.dart';
import 'package:dash_app/Screens/ResturantScreen/ui/top_card.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class ResturentScreen extends StatelessWidget {
  const ResturentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0.0,
        actions: [
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: const Text(
                'Searcch',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ))
        ],
      ),
      body: Column(
        children: [
          //Top Card
          const TopCard(),

          SizedBox(height: 24.0 * deviceWidth),
          //Body
          const Text(
            'MENU',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 5.0,
              color: Color.fromRGBO(102, 105, 105, 1),
            ),
          ),

          SizedBox(height: 20.0 * deviceWidth),
          //Card
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => const MenueItemCard(),
            ),
          ),

          SizedBox(height: 18.0 * deviceWidth),
          //Book Table Button
          const BackButtonResturant(),
        ],
      ),
    );
  }
}
