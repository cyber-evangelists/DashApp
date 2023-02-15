import 'package:flutter/material.dart';

import '../const.dart';

class MyContactCard extends StatelessWidget {
  const MyContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/AddGuestOnTable/Avatar.png'),
      ),
      title: Text(
        'My Contacts',
        style: TextStyle(
            fontSize: 18.0 * deviceWidth,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(116, 94, 94, 1)),
      ),
      trailing: Container(
        width: 96 * deviceWidth,
        height: 27 * deviceWidth,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(219, 219, 219, 1),
          borderRadius: BorderRadius.circular(7.0)
        ),
        child: TextButton(
          child: Text(
            'ADD',
            style: TextStyle(
                color: primaryColor,
                fontSize: 14 * deviceWidth,
                fontWeight: FontWeight.w700),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
