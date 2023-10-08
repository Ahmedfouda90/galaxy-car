import 'package:flutter/material.dart';
import 'package:untitled1/screens/chatOne.dart';
import 'package:untitled1/screens/countries/all_countries.dart';

import '../../custom_widgets/custom_text.dart';
import '../../widgets_body/dar_details_body/car_pics.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 25,
            ),
          ),

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/352521_location_on_icon 1.png'),
              CustomText(
                  fontSize: 16,
                  textColor: Colors.white,
                  text: '   UAE',
                  fontWeight: FontWeight.bold)
            ],
          ),

          centerTitle: true,
          actions: [
            Stack(
              children: [
                Positioned(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatOne()));
                      },
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Positioned(
                    top: 12,
                    left: 25,
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




        backgroundColor:Color(0xFF2B2A29),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: screenWidth*.04),
            child: Column(children: [
                 SizedBox(
                height: screenHeight*.02,
              ),

              Row(
                children: [
                  Image.asset(
                    'assets/images/Group 33977.png',
                  ),
                  SizedBox(
                    width: screenWidth*.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hyundai TUC',
                        style: TextStyle(
                            // fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ven 90 zo',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18  ,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              //this for the earth logo in background and car images
              CarImages(),
              // just text
              SizedBox(
                height: screenHeight*.025,
              ),
              Row(
                children:const [
                  Text(
                    'Specifications',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
                SizedBox(height: screenHeight*.02),
              ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: 70, maxWidth: double.infinity),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, int index) => Padding(
                          padding:  EdgeInsets.only(right: screenWidth*.03),
                          child: Container(
                            width: screenWidth*.343,
                            height: screenHeight*.086,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black12,
                                border: Border.all(color: Colors.grey, width: 1.3)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: screenWidth*.04),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  SizedBox(
                                    height: screenHeight*.012,
                                  ),
                                  Text(
                                    'Model',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: screenHeight*.008,
                                  ),
                                  Text(
                                    'Gas',
                                    style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: screenHeight*.04,
              ),
              //just text
/*
              Row(
                children: const [
                  Text(
                    'More details',
                    style: TextStyle(

                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
*/

              /*SizedBox(
              height: screenHeight*.01,
              ),*/
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: screenWidth*.397,
                      height: screenHeight*.056,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [ Image.asset(
                            'assets/images/امارات.png',
                            width: 30,
                          ),
                            //assets/images/Vector (5).png
                            const  Text(
                              ' UAE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12),
                            )],),
                          Image.asset(
                            'assets/images/Vector (5).png',
                            width: 30,
                          ),
                          //assets/images/Vector (5).png
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: screenWidth*.397,
                      height: screenHeight*.056,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                            //assets/images/Vector (5).png
                            const  Text(
                              ' AED' + '  18,500',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12),
                            ),
                          Image.asset(
                            'assets/images/Group.png',
                            width: 30,
                          ),
                          //assets/images/Vector (5).png
                        ],
                      ),
                    ),

                  ],
                ),
              ),
                SizedBox(
                height: screenHeight*.03,
              ),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*.04),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth*.397,
                      height: screenHeight*.056,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                      width: screenWidth*.397,
                      height: screenHeight*.056,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
            ]),
          ),
        ));
  }
}


