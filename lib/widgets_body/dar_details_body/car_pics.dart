import 'package:flutter/material.dart';
class CarImages extends StatelessWidget {
  const CarImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      // width: MediaQuery.of(context).size.width,
      height:270 ,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 70,
              ),
              Image.asset(
                'assets/images/Group 33971.png',
                // fit: BoxFit.contain, // Adjust this to your needs
              ),
            ],
          ),
          Positioned(
              top: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 15),
                    child: Column(
                      children: [
                        /* SizedBox(
                              height: 40,
                            ),*/
                        Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.3,
                                  color: Colors.grey,
                                )),
                            child: Image.asset(
                              'assets/images/pngwing.png',
                              // width: 60,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.3,
                                  color: Colors.grey,
                                )),
                            child: Image.asset(
                              'assets/images/pngwing.png',
                              // width: 60,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.3,
                                  color: Colors.grey,
                                )),
                            child: Image.asset(
                              'assets/images/pngwing.png',
                              // width: 60,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.3,
                                  color: Colors.grey,
                                )),
                            child: Image.asset(
                              'assets/images/pngwing.png',
                              // width: 60,
                            )),
                      ],
                    ),
                  ),

                  Image.asset('assets/images/pngwing 1.png'),
                ],
              ))
        ],
      ),
    );
  }
}





