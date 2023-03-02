import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = getDeviceWidth(context);
    final provider = context.read<UserProvider>();
    return Container(
      width: 344 * deviceWidth,
      height: 93 * deviceWidth,
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(20, 13, 0, 14),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              provider.userName ?? 'Darrell Steward',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              provider.userEmail ?? 'darrellsteward12@gmail.com',
              style: const TextStyle(
                color: Color.fromRGBO(255, 220, 215, 1),
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'View profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        CircleAvatar(
          radius: 58,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(provider.userProfileImg ??
                'https://images.unsplash.com/photo-1677680127713-f23a55c96955?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
        ),
      ]),
    );
  }
}
