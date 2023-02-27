import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_app/Screens/Home/ui/row.dart';
import 'package:dash_app/Screens/TableReservation/ui/nutrition_data_column.dart';
import 'package:dash_app/Screens/TableReservation/ui/recipe_detail_card.dart';
import 'package:dash_app/Screens/TableReservation/ui/review_card.dart';
import 'package:dash_app/Screens/TableReservation/ui/tabs.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class TableReservationScreen extends StatefulWidget {
  const TableReservationScreen({super.key});

  @override
  State<TableReservationScreen> createState() => _TableReservationScreenState();
}

class _TableReservationScreenState extends State<TableReservationScreen>
    with TickerProviderStateMixin {
  bool readMore = false;

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
      body: SingleChildScrollView(
        child: Column(
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
                  TabBars(
                    tabController: tabController,
                    onPressed: () {
                      setState(() {
                        readMore = !readMore;
                      });
                    },
                    readMore: readMore,
                  ),

                  const RecipeDetailCard(),

                  SizedBox(height: 21.0 * deviceWidth),

                  const RecommendedRow(firstText: 'Nutrition Per Serving'),

                  SizedBox(height: 21.0 * deviceWidth),

                  //Nutrition Serving Card
                  Container(
                    height: 45.0 * deviceWidth,
                    width: 308 * deviceWidth,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const NutritionDataColumn(
                          nutritionType: 'Calories',
                          nutritionValue: '318',
                        ),
                        Container(
                            width: 20,
                            decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.black)),
                            )),
                        const NutritionDataColumn(
                          nutritionType: 'Fat',
                          nutritionValue: '12.6 g',
                        ),
                        Container(
                            width: 20,
                            decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.black)),
                            )),
                        const NutritionDataColumn(
                          nutritionType: 'Protein',
                          nutritionValue: '25.6 g',
                        ),
                        Container(
                            width: 20,
                            decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.black)),
                            )),
                        const NutritionDataColumn(
                          nutritionType: 'Carbs',
                          nutritionValue: '24.9',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25.0 * deviceWidth),

                  const RecommendedRow(firstText: 'Reviews'),

                  SizedBox(height: 18.0 * deviceWidth),

                  SizedBox(height: 100,
                  child:  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => const ReviewCard(),
                  ),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
