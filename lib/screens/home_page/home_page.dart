import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/screens/countries/home_page_countries.dart';

import '../../custom_widgets/textFormField_Widget.dart';
import '../../widgets_body/home_page_body/brands_logo.dart';
import '../../widgets_body/home_page_body/countries details.dart';
import '../../widgets_body/home_page_body/first_row_body.dart';
import '../../widgets_body/home_page_body/listview_of_car_details.dart';
import '../countries/all_countries.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
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
              color:Color(0xffBF00C2),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Countries()));
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              // the container at the above of screen
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset(
                          'assets/images/Group 34107.png',
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                fontSize: 18,
                                // textColor: ,
                                text: 'Sell a car ',
                                fontWeight: FontWeight.bold),
                            SizedBox(height: 3,),
                            CustomText(
                              fontSize: 14,
                              // textColor: ,
                              text: 'Discover the road',
                              // fontWeight: FontWeight.bold
                            ),
                            SizedBox(height: 3,),
                            CustomText(
                              fontSize: 14,
                              // textColor: ,
                              text: 'in a whole new way!',
                              // fontWeight: FontWeight.bold
                            ),
                          ],
                        ),
                        Image.asset('assets/images/pngwing 2.png'),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 1,),
                  CustomText(fontSize: 24,
                      textColor: Colors.white,
                      text: 'Browse',
                      fontWeight: FontWeight.bold),
                  Text(
                    'view all ',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CountiesDetails(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 1,),
                  CustomText(fontSize: 24,
                      textColor: Colors.white,
                      text: 'Brands',
                      fontWeight: FontWeight.bold),
                  Text(
                    'view all ',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const BrandLogo(),
              const SizedBox(
                height: 20,
              ),
              // row of texts
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      fontSize: 18,
                      textColor: Colors.grey,
                      text: 'recently added',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'best scale',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'saved',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'view all',
                      fontWeight: FontWeight.w700),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ListViewOfCarDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
