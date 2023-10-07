import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/screens/countries/home_page_countries.dart';
import 'package:untitled1/screens/chatOne.dart';

import '../../custom_widgets/textFormField_Widget.dart';

class Countries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Color(0xffBF00C2),
            ),
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            hintText: 'Search your Car',
            // contentPadding: EdgeInsets.only(bottom: 50),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                  strokeAlign: 5,
                ),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
        actions: [
          Stack(
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePageTwo()));
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CustomText(
                    fontSize: 28,
                    textColor: Colors.white,
                    text: 'Contries',
                    fontWeight: FontWeight.w700),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 24,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEEEEE),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Frame 41.png',
                                width: 100,
                              ),
                              CustomText(
                                  fontSize: 18,
                                  textColor: Colors.black,
                                  text: 'England',
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

/*
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 600, maxWidth: 600),
                  child: GridView.builder(
                      itemCount: 24,
                      // shrinkWrap: true,
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.vertical,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 90,
                        crossAxisCount: 3,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 25,
                        childAspectRatio: 3 / 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(

                          // width: 250,
                          // height: 150,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEEEEE),
                          ),
                          child: Image.asset('assets/images/Frame 41.png',width: 70 ,),
                        );
                      }

                    */
/* ListView.builder(
                    itemExtent: 1,
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      itemBuilder: (context, int index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffEEEEEE),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                          'assets/images/image 22.png',
                                          width: 85),
                                    ),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // SizedBox(height: 15,),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2020'),
                                            SizedBox(
                                              width: 180,
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
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                    ),
                                    // Text('hbgvc')
                                  ],
                                ),
                              ),
                            ),
                          )),*/
            /*

                  ),
                ),
              ),
            )
*/
          ],
        ),
      ),
    );
  }
}
