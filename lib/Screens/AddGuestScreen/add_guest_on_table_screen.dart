import 'package:dash_app/const.dart';
import 'package:dash_app/widgets/button.dart';
import 'package:dash_app/widgets/contact_list_tile.dart';
import 'package:flutter/material.dart';

class AddGuestOnTableScreen extends StatelessWidget {
  const AddGuestOnTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My Contacts',
          style: TextStyle(
              fontSize: 20.0 * deviceWidth,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 19.0 * deviceWidth),
          Expanded(
            child: ListView(
              children: const [
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
                MyContactCard(),
              ],
            ),
          ),
          const CustomButton(text: 'Save'),
          SizedBox(height: 29.0 * deviceWidth),
          
        ],
      ),
    );
  }
}
