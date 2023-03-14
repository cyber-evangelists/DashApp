import 'package:dash_app/Provider/google_signin_provider.dart';
import 'package:dash_app/Screens/Account/ui/profile_card.dart';
import 'package:dash_app/Screens/Account/ui/setting_type.dart';
import 'package:dash_app/Screens/Account/ui/settings_tile.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<GoogleSignInProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Account',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          20.ph,
          const ProfileCard(),
          24.ph,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SettingType(
                    title: 'Content',
                  ),
                  SettingsTile(
                      leadingIcon: Icons.favorite_outline, title: 'Like'),
                  SettingsTile(
                      leadingIcon: Icons.notifications_none_outlined,
                      title: 'Notificaions'),
                  SettingsTile(
                      leadingIcon: Icons.settings_outlined, title: 'Settigns'),
                  SettingType(
                    title: 'Food Orders',
                  ),
                  SettingsTile(
                      leadingIcon: Icons.shopping_cart_outlined,
                      title: 'Settigns'),
                  SettingsTile(
                      leadingIcon: Icons.favorite_outline,
                      title: 'Favorites dish'),
                  SettingsTile(
                      leadingIcon: Icons.message_outlined,
                      title: 'Online order help'),
                  SettingType(
                    title: 'Table booking',
                  ),
                  SettingsTile(
                      leadingIcon: Icons.shopping_cart_checkout_outlined,
                      title: 'Your booking'),
                  SettingsTile(
                      leadingIcon: Icons.message_outlined,
                      title: 'Table booking help'),
                  SettingsTile(
                      leadingIcon: Icons.person_2_outlined, title: 'Friends'),
                  SettingType(
                    title: 'other',
                  ),
                  SettingsTile(leadingIcon: Icons.info_outline, title: 'About'),
                  SettingsTile(
                      leadingIcon: Icons.feedback_outlined,
                      title: 'Send Feedack'),
                  SettingsTile(
                      leadingIcon: Icons.person_add_alt_1_outlined,
                      title: 'Invite Friends'),
                  SettingsTile(
                      onTap: () {
                        provider.googleLogout();
                      },
                      leadingIcon: Icons.logout_outlined,
                      title: 'Logout'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
