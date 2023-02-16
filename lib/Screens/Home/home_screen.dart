import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_app/const.dart';
import 'package:dash_app/widgets/mood_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375 * baseWidth,
            height: 156 * deviceWidth,
            color: primaryColor,
            padding: const EdgeInsets.fromLTRB(16, 10, 15, 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello Alexa 👋',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          'Eat right! Be tight!',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                            'assets/images/HomeScreen/Group 1000002650.png'),
                        const Positioned(
                          right: 0.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: Text('1'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 13.0, 16.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(238, 241, 242, 1),
                suffixIcon: Image.asset('assets/images/MagnifyingGlass.png'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                  borderSide: const BorderSide(style: BorderStyle.none),
                ),
                hintText: 'Search for restaurant, item or more',
                filled: true,
              ),
            ),
          ),

          //body
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 13.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Upcoming Order',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.0 * deviceWidth,
                  ),
          
                  //Upcoming Order Card's Slider
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        padding: const EdgeInsets.all(8.0),
                        height: 130 * deviceWidth,
                        width: 320 * deviceWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            //Image
                            Image.asset(
                                'assets/images/HomeScreen/Rectangle 4133.png'),
                            SizedBox(width: 10.0 * deviceWidth),
                            //Card Details
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Cafe Vita',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 150 * deviceWidth,
                                  height: 48 * deviceWidth,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1 x white bean hummus, 1  x AppleBrie',
                                        style: TextStyle(
                                          fontSize: 12.0 * deviceWidth,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.7),
                                        ),
                                      ),
                                      Text(
                                        'Today at 06:10 pm - 4 People',
                                        style: TextStyle(
                                          fontSize: 12.0 * deviceWidth,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0 * deviceWidth,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  child: const Text(
                                    'Check in',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(57, 81, 177, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    options: CarouselOptions(
                        height: 130.0,
                        enableInfiniteScroll: false,
                        padEnds: false),
                  ),
          
                  SizedBox(height: 18.0 * deviceWidth),
                  //Moode flor
                  const Text(
                    'Mood for…',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 14.0 * deviceWidth),
          
                  SizedBox(
                    width: 358 * deviceWidth,
                    height: 104 * deviceWidth,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MoodTile(),
                          MoodTile(),
                          MoodTile(),
                          MoodTile(),
                          MoodTile(),
                          MoodTile(),
                        ]),
                  ),
                  SizedBox(height: 24.0 * deviceWidth),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Recommended for you',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14.0),
                        child: Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                      ),                      
                    ],
                  ),

                SizedBox(height: 12.0 * deviceWidth),
                  // Card for Recommended
                  SizedBox(
                    height: 267 * deviceWidth,
                    width: 272 * deviceWidth,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/HomeScreen/BG.png')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.access_alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 76 * deviceWidth,
          padding: const EdgeInsets.fromLTRB(18, 9, 18, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
