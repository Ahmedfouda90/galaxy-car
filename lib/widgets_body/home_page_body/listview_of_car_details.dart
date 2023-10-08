import 'package:flutter/material.dart';

class ListViewOfCarDetails extends StatelessWidget {
  const ListViewOfCarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 400, maxWidth: 500),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 8,
          itemBuilder: (context, int index) => Padding(
            padding:  EdgeInsets.symmetric(vertical:screenHeight*.02),
            child: Container(
              width: screenWidth*.846,
              height: screenHeight*.136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEEEEEE),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/image 22.png',
                      // width: 85
                    ),
                  ),

                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 15,),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2020'),
                            SizedBox(
                              width: 18,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  size: 25,
                                ))
                          ],
                        ),
                        Text(
                          'Ford Reckons',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                       /* SizedBox(
                          height: 5,
                        ),*/

                        Row(
                          children: [
                            Text(
                              '100 k ml',
                              style: TextStyle(),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'white',
                              style: TextStyle(),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '58,900 \$ ',
                              style: TextStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

/*
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text('2020'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ford Reckons',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: [
                              Text(
                                '100 k ml',
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'white',
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '58,900 \$ ',
                                style: TextStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(width: 40,),
                          Icon(
                            Icons.favorite_border,
                            size: 25,
                          ),
                        ],
                      ),*/
                  // Text('hbgvc')
                ],
              ),
            ),
          )),
    );
  }
}
