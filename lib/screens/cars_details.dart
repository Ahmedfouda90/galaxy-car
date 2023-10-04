import 'package:flutter/material.dart';
import 'package:untitled1/screens/all_countries.dart';

import '../widgets_body/dar_details_body/car_pics.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            const  SizedBox(
              height: 20,
            ),
            //first row that contains notification icon
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 40,
                  ),
                ),

                Text(
                  'search',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                ),

                Stack(
                  children: [
                    Positioned(
                      child:                 IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => Countries()));
                        },
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),

                    ),
                    Positioned(
                        top: 10,
                        left: 22,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //second item , contains logo and name  of brand
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Group 33977.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hyundai TUC',
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ven 90 zo',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //this for the earth logo in background and car images
            CarImages(),
            // just text
            Row(
              children:const [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Specifications',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const  SizedBox(height: 10),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: 70, maxWidth: double.infinity),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, int index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  'Energy Type',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  'Gas',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            //just text
            Row(
              children: const [
                Padding(
                  padding:  EdgeInsets.only(left: 15.0),
                  child: Text(
                    'More details',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            ),

          const  SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Vector (2).png',
                          width: 30,
                        ),
                        const  Text(
                          'Play Video',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        Image.asset(
                          'assets/images/Vector (3).png',
                          width: 30,
                        ),
                        const Text(
                          'Start Chat',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
