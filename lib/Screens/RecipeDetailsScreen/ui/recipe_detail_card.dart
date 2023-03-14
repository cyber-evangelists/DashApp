import 'package:dash_app/Screens/RecipeDetailsScreen/ui/recipe_detail_card_row.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class RecipeDetailCard extends StatelessWidget {
  const RecipeDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      height: 101 * deviceWidth,
      width: 344 * deviceWidth,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(237, 244, 244, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          //First Row
          RecipeDetailCardRown(
            icon: Image.asset('assets/images/TableResevationScreen/Vector (1).png'),
            firstText: 'Total Time',
            secondText: '30 Min',
          ),
          SizedBox(height: 9 * deviceWidth),

          //Second Row
          RecipeDetailCardRown(
            icon: Image.asset('assets/images/TableResevationScreen/Vector.png'),
            firstText: 'Number of ingredients',
            secondText: '12',
          ),
          SizedBox(height: 9 * deviceWidth),

          //Third Row
          RecipeDetailCardRown(
            icon: Image.asset('assets/images/TableResevationScreen/Vector.png'),
            firstText: 'Nutrition',
            secondText: '103',
          ),
        ],
      ),
    );
  }
}
