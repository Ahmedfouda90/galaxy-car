import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/widgets_body/home_page_body/brands_logo.dart';
import 'package:untitled1/widgets_body/home_page_two_body/bottom_sheet.dart';
import 'package:untitled1/screens/countries/all_countries.dart';

import 'cars_details.dart';

class HomePageTwo extends StatelessWidget {
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
                              builder: (context) => CarDetails()));
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
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
             SizedBox(
              height: screenHeight*.04,
            ),

            // textField for search
            Container(
              // width: 320,
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Color(0xffBF00C2),
                  ),
                  suffixIcon: Image.asset('assets/images/Group 34021 (2).png'),

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
            ),
            SizedBox(
              height: screenHeight*.03,
            ),
            // just text
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image.asset('assets/images/Brands.png'),
                CustomText(
                    fontSize: 20,
                    textColor: Colors.white,
                    text: 'Brands',
                    fontWeight: FontWeight.w700),
              ],
            ),
            SizedBox(
              height: screenHeight*.02,
            ),
            BrandLogo(),
            SizedBox(
              height: screenHeight*.04,
            ),
            //just text
            /*  GridViewOfCarDetails( ),*/
            Expanded(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return BottomSheett();
                      });
                },
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        // clipBehavior: Clip.none,
                        // physics:\,

                        itemCount: 24,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 150,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 25,
                          childAspectRatio: 4 / 3,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: Container(


                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffEEEEEE),
                                    ),

                                    // height: 200,
                                  ),
                                ),
                                Positioned(
                                  top: -25,
                                  left: 13,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/car-png-39071 1.png',
                                        // width: 100,
                                      ),
                                      SizedBox(
                                        height: screenHeight*.009,
                                      ),
                                      CustomText(
                                        fontSize: 16,
                                        text: 'Ford Reckons',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      SizedBox(
                                        height: screenHeight*.006,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/امارات.png'),
                                          SizedBox(
                                            width: screenWidth*.015
                                          ),
                                          Text(
                                            'AED 50.000',
                                            style: TextStyle(
                                                color: Color(0xffBF00C2),
                                            fontSize: 12
                                            ),
                                          ),
                                          SizedBox(
                                              width: screenWidth*.015
                                          ),
                                          Text(
                                            '100k Mi.',
                                            style: TextStyle(
                                              fontSize: 12
                                            ),
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
/*
      bottomNavigationBar: NavigationBar(
        destinations: [
          Text('pmdkmdc'),
          Text('pmdkmdc'),
          Text('pmdkmdc'),
        ],
        height: 70,
      ),
*/
    );
  }
}
