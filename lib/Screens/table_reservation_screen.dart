import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class TableReservationScreen extends StatefulWidget {
  const TableReservationScreen({super.key});

  @override
  State<TableReservationScreen> createState() => _TableReservationScreenState();
}

class _TableReservationScreenState extends State<TableReservationScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0.0,
        title: const Text(
          'Recipe Details',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Slider
          Container(
            width: 375 * deviceWidth,
            height: 260 * deviceWidth,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(238, 241, 242, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32))),
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Image.asset(
                        'assets/images/TableResevationScreen/Rectangle 1.png',
                        height: 184 * deviceWidth,
                        width: 344 * deviceWidth,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    padEnds: false,
                  ),
                ),
              ],
            ),
          ),

          //Main Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 27 * deviceWidth),
                const Text(
                  'Tandoori Paneer Pizza',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(width: 10.0 * deviceWidth),
                Row(
                  children: [
                    Image.asset(
                        'assets/images/ResturantScreen/Group 1000002214.png'),
                    SizedBox(width: 9.0 * deviceWidth),
                    const Text(
                      '4.5 (100+ ratings)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),

                //Tabs
                SizedBox(width: 29 * deviceWidth),
                TabBar(
                  controller: tabController,
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Text('Description'),
                    Text('Ingredients'),
                    Text('Directions'),
                  ],
                ),
                SizedBox(
                  width: 345 * deviceWidth,
                  height: 252 * deviceWidth,
                  child: const TabBarView(
                    children: [
                    Text('data'),
                    Text('Description'),
                    Text('Description'),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
