import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final bool isActive;
  const CustomBottomAppBar({super.key, this.onPressed, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return BottomAppBar(
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
                    children: [
                      Icon(Icons.home, color: isActive? Colors.amber : Colors.black,),
                      const Text('Home'),
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
    );
  }
}
