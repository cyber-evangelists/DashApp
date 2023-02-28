import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_app/Firebase/read_data.dart';
import 'package:dash_app/Screens/Home/ui/buttons_row.dart';
import 'package:dash_app/Screens/Home/ui/card.dart';
import 'package:dash_app/Screens/Home/ui/recommended_card.dart';
import 'package:dash_app/Screens/Home/ui/row.dart';
import 'package:dash_app/Screens/Home/ui/upcoming_order_card.dart';
import 'package:dash_app/const.dart';
import 'package:dash_app/models/categories.dart';
import 'package:dash_app/models/resturant.dart';
import 'package:dash_app/widgets/mood_tile.dart';
import 'package:flutter/material.dart';

class FirstTabView extends StatefulWidget {
  const FirstTabView({super.key});

  @override
  State<FirstTabView> createState() => _FirstTabViewState();
}

class _FirstTabViewState extends State<FirstTabView> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;

    return SingleChildScrollView(
      child: Column(
        children: [
          //TextField Search
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

          const SizedBox(height: 9.0),
          //ButtonsRow
          Row(
            children: [
              const SizedBox(width: 16.0),
              Wrap(
                spacing: 2,
                children: const [
                  ButtonsRow(
                    text: 'Sort',
                    leadingIcon: Icon(Icons.sort, size: 12),
                    lastIcon: Icon(Icons.arrow_downward, size: 12),
                  ),
                  ButtonsRow(
                    text: '2 - 7:00 PM tonight',
                    leadingIcon: Icon(Icons.person_2_outlined, size: 12),
                    isSeleted: true,
                  ),
                  ButtonsRow(
                      text: 'Nearby',
                      leadingIcon:
                          Icon(Icons.location_city_outlined, size: 12)),
                  ButtonsRow(
                      text: 'Over 4.5  |',
                      leadingIcon: Icon(Icons.star_border, size: 12)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          //body
          Padding(
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
                SizedBox(height: 10.0 * deviceWidth),
                // Upcoming Order Card's Slider
                CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (context, index, realIndex) {
                    return const UpcomingOrderCard();
                  },
                  options: CarouselOptions(
                    height: 130.0,
                    enableInfiniteScroll: false,
                    padEnds: false,
                  ),
                ),

                // Upcoming Order Card's Slider
                // SizedBox(
                //   height: 140.0 * deviceWidth,
                //   child: PageView.builder(
                //     itemCount: 5,
                //     itemBuilder: (context, index) => const Padding(
                //       padding: EdgeInsets.only(left: 18.0),
                //       child: UpcomingOrderCard(),
                //     ),
                //   ),
                // ),

                // SizedBox(height: 12.0 * deviceWidth),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     Idicator(isActive: true,),
                //     Idicator(isActive: false,),
                //     Idicator(isActive: false,),
                //   ],
                // ),

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
                // provider.fetch
                //     ? SizedBox(
                //         width: 358 * deviceWidth,
                //         height: 104 * deviceWidth,
                //         child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: categoriesList.length,
                //           itemBuilder: (context, index) {
                //             return MoodTile(categorie: categoriesList[index]);
                //           },
                //         ),
                //       )
                //     : const CircularProgressIndicator(),

                StreamBuilder(
                  stream: getCategoriesFirebase(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Categories>? data =
                          snapshot.data as List<Categories>?;
                      return SizedBox(
                        width: 358 * deviceWidth,
                        height: 104 * deviceWidth,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return MoodTile(categorie: data[index]);
                          },
                        ),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                SizedBox(height: 24.0 * deviceWidth),

                //Recommended For You Row
                const RecommendedRow(firstText: 'Recommended for you'),

                SizedBox(height: 12.0 * deviceWidth),
                // Card for Recommended
                SizedBox(
                  height: 280.0,
                  width: double.infinity,
                  child: StreamBuilder<Object>(
                      stream: getAllResturants(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Restaurant>? resturantData =
                              snapshot.data as List<Restaurant>?;
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: resturantData!.length,
                            itemBuilder: (context, index) => RecommnendedCard(
                              restaurant: resturantData[index],
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else {
                          return const Center(child: CircularProgressIndicator());
                        }
                      }),
                ),

                //Cards
                SizedBox(
                  height: 165,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => const Cards(),
                  ),
                ),

                const SizedBox(height: 20.0),

                //Must try visit Row
                const RecommendedRow(firstText: 'Must try visit'),

                SizedBox(height: 12.0 * deviceWidth),
                // Card for Recommended
                SizedBox(
                  height: 280.0,
                  width: double.infinity,
                  child: StreamBuilder<Object>(
                      stream: getAllResturants(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Restaurant>? resturantData =
                              snapshot.data as List<Restaurant>?;
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: resturantData!.length,
                            itemBuilder: (context, index) => RecommnendedCard(
                              restaurant: resturantData[index],
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else {
                          return const Center(child: CircularProgressIndicator());
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
