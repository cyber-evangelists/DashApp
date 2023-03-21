import 'package:dash_app/Provider/google_signin_provider.dart';
import 'package:dash_app/Screens/Account/ui/profile_card.dart';
import 'package:dash_app/Screens/Account/ui/setting_type.dart';
import 'package:dash_app/Screens/Account/ui/settings_tile.dart';
import 'package:dash_app/const.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          ProfileCard(
            onTap: () {
              GoRouter.of(context)
                  .pushNamed(MyAppRoutesConsts.profilePageRouteName);
            },
          ),
          24.ph,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SettingType(
                    title: 'Content',
                  ),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.favorite_outline,
                      title: 'Like'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.notifications_none_outlined,
                      title: 'Notificaions'),
                  SettingsTile(
                    onTap: () {
                      GoRouter.of(context)
                          .pushNamed(MyAppRoutesConsts.settingsRouteName);
                    },
                    leadingIcon: Icons.settings_outlined,
                    title: 'Settigns',
                  ),
                  const SettingType(
                    title: 'Food Orders',
                  ),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.shopping_cart_outlined,
                      title: 'Your Orders'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.favorite_outline,
                      title: 'Favorites dish'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.message_outlined,
                      title: 'Online order help'),
                  const SettingType(
                    title: 'Table booking',
                  ),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.shopping_cart_checkout_outlined,
                      title: 'Your booking'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.message_outlined,
                      title: 'Table booking help'),
                  SettingsTile(
                    onTap: () {
                      GoRouter.of(context)
                          .pushNamed(MyAppRoutesConsts.addGuestRouteName);
                    },
                    leadingIcon: Icons.person_2_outlined,
                    title: 'Friends',
                  ),
                  const SettingType(
                    title: 'other',
                  ),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.info_outline,
                      title: 'About'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.feedback_outlined,
                      title: 'Send Feedack'),
                  SettingsTile(
                      onTap: () {},
                      leadingIcon: Icons.person_add_alt_1_outlined,
                      title: 'Invite Friends'),
                  SettingsTile(
                      onTap: () {
                        context.read<GoogleSignInProvider>().googleLogout();
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
