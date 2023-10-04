import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/screens/brands.dart';
import 'package:untitled1/widgets_body/home_page_body/brands_logo.dart';
import 'package:untitled1/widgets_body/home_page_two_body/bottom_sheet.dart';

import '../custom_widgets/custom_container.dart';
import '../custom_widgets/textFormField_Widget.dart';
import '../widgets_body/home_page_body/first_row_body.dart';
import '../widgets_body/home_page_two_body/first_row 2.dart';
import '../widgets_body/home_page_two_body/gridview_of_car_details.dart';

class HomePageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        const  SizedBox(
            height: 25,
          ),
          const FirstRow00(),
        const  SizedBox(
            height: 20,
          ),
          // textField for search
      Container(
            width: 320,
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Image.asset(
                  'assets/images/Group 33906.png',
                  width: 50,
                  height: 20,
                  color: Colors.red,
                ),
                suffixIcon: Image.asset(
                  'assets/images/Group 34021 (2).png',
                  width: 50,
                  height: 20,
                  color: Colors.red,
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
          ),
         const SizedBox(
            height: 30,
          ),
          // just text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image.asset('assets/images/Brands.png'),
                CustomText(fontSize: 20, textColor: Colors.white, text: 'Brands', fontWeight: FontWeight.w700),
                CustomText(fontSize:14, textColor: Colors.grey, text: 'View all', fontWeight: FontWeight.w700),

              ],
            ),
          ),
       const   SizedBox(
            height: 20,
          ),
          BrandLogo(),
          SizedBox(
            height: 20,
          ),
          //just text
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Available Cars ',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
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
                      itemCount: 12,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 20,
                        childAspectRatio: 4/3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffEEEEEE),
                                  ),
                                  height: 200,
                                ),
                              ),
                              Positioned(
                                top: -20,
                                left: 10,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/car-png-39071 1.png',
                                      width: 100,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CustomText(
                                      fontSize: 20,
                                      text: 'Ford Reckons',
                                      fontWeight: FontWeight.w700,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '100 kml',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'white',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '58,900\$',
                                        ),
                                      ],
                                    ),
                                  ],
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
