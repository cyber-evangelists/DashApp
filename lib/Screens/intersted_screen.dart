import 'package:dash_app/const.dart';
import 'package:dash_app/widgets/bubble.dart';
import 'package:dash_app/widgets/button.dart';
import 'package:flutter/material.dart';

class InterstedScreen extends StatelessWidget {
  const InterstedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Tell us what you’re interested in',
              style: TextStyle(
                  fontSize: 22.0 * deviceWidth, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 25.0 * deviceWidth),
            SizedBox(
              height: 38 * deviceWidth,
              width: 343 * deviceWidth,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(238, 241, 242, 1),
                  suffixIcon: Image.asset('assets/images/MagnifyingGlass.png'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9.0),
                    borderSide: const BorderSide(style: BorderStyle.none),
                  ),
                  hintText: 'Search intersted',
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 26.0 * deviceWidth),
            const Divider(color: Color.fromRGBO(21, 22, 22, 1)),
            SizedBox(height: 19.0 * deviceWidth),
            Expanded(
              child: Wrap(
                children: const [
                  InterstedBubble(),
                  InterstedBubble(),
                  InterstedBubble(),
                  InterstedBubble(),
                  InterstedBubble(),
                  InterstedBubble(),
                ],
              ),
            ),
            Text(
              'Load More',
              style: TextStyle(
                fontSize: 16.0 * deviceWidth,
                fontWeight: FontWeight.w500,
                color: primaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 21.0 * deviceWidth),
            const CustomButton(text: 'Load More'),
          ],
        ),
      ),
    );
  }
}
