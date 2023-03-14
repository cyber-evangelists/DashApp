import 'package:dash_app/Screens/Account/account_screen.dart';
import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> screensList = [
    const HomeScreen(),
    const AccountScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      body: screensList[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.access_alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 76 * deviceWidth,
          padding: const EdgeInsets.fromLTRB(18, 9, 18, 20),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              border: Border(
                  top: BorderSide(
                      color: Color.fromRGBO(236, 240, 240, 1), width: 1.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentIndex == 0 ? Icons.home : Icons.home_outlined,
                          color:
                              currentIndex == 0 ? primaryColor : Colors.black,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color:
                                currentIndex == 0 ? primaryColor : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.home),
                        Text('Home'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.home),
                        Text('Home'),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentIndex == 1
                              ? Icons.person_2
                              : Icons.person_2_outlined,
                          color:
                              currentIndex == 1 ? primaryColor : Colors.black,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color:
                                currentIndex == 1 ? primaryColor : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
