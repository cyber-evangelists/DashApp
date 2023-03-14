import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  final TabController tabController;
  final void Function()? onPressed;
  final bool readMore;
  const TabBars({super.key, required this.tabController, required this.onPressed, this.readMore = false});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 40 * deviceWidth,
            child: TabBar(
              controller: tabController,
              labelColor: primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: primaryColor,
              tabs: const [
                Text('Description'),
                Text('Ingredients'),
                Text('Directions'),
              ],
            ),
          ),
          SizedBox(height: 20 * deviceWidth),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              ListView(
                children: [
                  Text(
                    maxLines: readMore ? null : 10,
                    overflow: readMore? TextOverflow.visible : TextOverflow.ellipsis,
                      'The Indian Parsi version of this dish uses Indian green chili peppers that are very similar to Thai birds eye chili peppers that I used here and they also use Indian spices like turmeric, coriander powder, red chili powder and garam masala. I have tried to simplify it to spices that are more readily available in the U.S and so I use smoked paprika instead of Indian red chili powder 🙂.  Also the Parsi dish doesn’t usually include any cheese garnishes like those you see in today’s bedazzled versions of Shakshouka with feta or parmesan etc. But, if that what rocks your boat…by all means add some cheese. See More'),
                  TextButton(
                      onPressed: onPressed,
                      child: const Text(
                        'See More',
                        style: TextStyle(color: primaryColor),
                      ))
                ],
              ),
              const Text('Description'),
              const Text('Description'),
            ]),
          )
        ],
      ),
    );
  }
}
