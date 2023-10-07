import 'package:flutter/material.dart';
import 'package:untitled1/screens/chatOne.dart';
import 'package:untitled1/screens/countries/all_countries.dart';

import '../../custom_widgets/custom_text.dart';
import '../../widgets_body/dar_details_body/car_pics.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              size: 40,
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
                        size: 40,
                      )),
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

        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(children: [
              const   SizedBox(
                height: 20,
              ),
              //first row that contains notification icon

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
                padding: const EdgeInsets.only(left: 10.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
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
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
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
              const  SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
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
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
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


