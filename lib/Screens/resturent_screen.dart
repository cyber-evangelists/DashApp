import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class ResturentScreen extends StatelessWidget {
  const ResturentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0.0,
        actions: [
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: const Text(
                'Searcch',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ))
        ],
      ),
      body: Column(
        children: [
          //Top Card
          Container(
            height: 200 * deviceWidth,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 241, 242, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 344 * deviceWidth,
              height: 181 * deviceWidth,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18 * deviceWidth),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 6),
                      blurRadius: 12 * deviceWidth,
                      color: const Color.fromRGBO(214, 219, 220, 0.75),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/ResturantScreen/Heart.png'),
                      Image.asset(
                          'assets/images/ResturantScreen/ShareNetwork.png'),
                    ],
                  ),

                  //
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                            'assets/images/ResturantScreen/Group 1000002210.png'),
                      ),
                      const SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pizza Hut',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700),
                          ),
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
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 9.0 * deviceWidth),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Pizza, Fast Food',
                        style: TextStyle(
                            color: Color.fromRGBO(102, 105, 105, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0 * deviceWidth),
                  Container(
                    height: 38 * deviceWidth,
                    width: 306 * deviceWidth,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(223, 227, 228, 1),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Center(
                      child: Text(
                        'Pizza Hut',
                        style: TextStyle(
                            color: Color.fromRGBO(102, 105, 105, 1),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //End Top Card

          SizedBox(height: 24.0 * deviceWidth),
          //Body
          const Text(
            'MENU',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 5.0,
              color: Color.fromRGBO(102, 105, 105, 1),
            ),
          ),

          SizedBox(height: 20.0 * deviceWidth),
          //Card
          Container(
            padding: const EdgeInsets.all(9.0),
            height: 136 * deviceWidth,
            width: 344 * deviceWidth,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(214, 219, 220, 0.65),
                  blurRadius: 32,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
            child: Row(
              children: [
                //Card Image
                Stack(children: [
                  Image.asset(
                      'assets/images/ResturantScreen/Rectangle 4133.png'),
                  Positioned(
                    top: 6.0,
                    left: 6.0,
                    child: Image.asset(
                        'assets/images/ResturantScreen/Group 1000002218.png'),
                  ),
                ]),
                SizedBox(width: 12.0 * deviceWidth),

                //card body
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //card title
                    Row(
                      children: [
                        const Text(
                          'Margherita Pizza',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(39, 44, 63, 1),
                          ),
                        ),
                        SizedBox(width: 40.0 * deviceWidth),
                        Image.asset(
                            'assets/images/ResturantScreen/Group 1000002214.png'),
                        const Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 21.0 * deviceWidth),
                    //price
                    const Text(
                      '\$200',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),

                    //description
                    const Text(
                      '2 McAloo Tikki Burgers + 2 Fries(L)',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 105, 105, 1),
                      ),
                    ),

                    //Card Button
                    Container(
                      width: 81,
                      height: 27,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(219, 219, 219, 1),
                        borderRadius: BorderRadius.circular(7.0)
                      ),
                      child: const Center(
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),

          //Book Table Button
          Container(
            width: 344 * deviceWidth,
            height: 64* deviceWidth,
            padding: const EdgeInsets.fromLTRB(12, 9, 13, 11),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Row(
              children: [
                //Left
                Column(
                  children: [
                    Text(
                          '2 Items',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                  ],
                ),
                //Right
              ],
            ),
          ),
        ],


      ),
    );
  }
}
