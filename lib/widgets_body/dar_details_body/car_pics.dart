import 'package:flutter/material.dart';

class CarImages extends StatelessWidget {
  const CarImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Container(
      // width: MediaQuery.of(context).size.width,
      height: 270,
      child: Stack(
        children: [
          /* Container(
            width: 100,
            height: 90,
          ),*/
          Positioned(
            top: -35,
            right: 0,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Group 33971.png',
                // fit: BoxFit.contain, // Adjust this to your needs
              ),
            ),
          ),
          Positioned(
              top: 32,
              // left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      /* SizedBox(
                            height: 40,
                          ),*/
                      Container(
                          width: screenWidth * .145,
                          height: screenHeight * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          child: Image.asset(
                            'assets/images/pngwing.png',
                            // width: 60,
                          )),
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      Container(
                          width: screenWidth * .145,
                          height: screenHeight * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          child: Image.asset(
                            'assets/images/pngwing.png',
                            // width: 60,
                          )),
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      Container(
                          width: screenWidth * .145,
                          height: screenHeight * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          child: Image.asset(
                            'assets/images/pngwing.png',
                            // width: 60,
                          )),
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      Container(
                          width: screenWidth * .145,
                          height: screenHeight * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          child: Image.asset(
                            'assets/images/pngwing.png',
                            // width: 60,
                          )),
                    ],
                  ),
                  SizedBox(width: screenWidth*.1,),
                  Image.asset('assets/images/pngwing 1.png'),
                ],
              ))
        ],
      ),
    );
  }
}
