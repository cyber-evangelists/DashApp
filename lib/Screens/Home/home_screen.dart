import 'package:dash_app/Screens/Home/ui/bottom_appbar.dart';
import 'package:dash_app/Screens/Home/ui/build_app_bar.dart';
import 'package:dash_app/Screens/Home/ui/first_tab_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context, tabController, user!.displayName!),
        body: TabBarView(controller: tabController, children: const [
          FirstTabView(),
          FirstTabView(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.access_alarm),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}
