import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/screens/HomePageTwo.dart';

import '../custom_widgets/textFormField_Widget.dart';
import '../widgets_body/home_page_body/brands_logo.dart';
import '../widgets_body/home_page_body/countries details.dart';
import '../widgets_body/home_page_body/first_row_body.dart';
import '../widgets_body/home_page_body/listview_of_car_details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const  SizedBox(
              height: 30,
            ),
            const     FirstRowBody(),
            const    SizedBox(
              height: 20,
            ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(width: 1,),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Image.asset('assets/images/Browse.png'),
                ),
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
            const    SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Image.asset('assets/images/Brands.png'),
                ),
                Text(
                  'view all ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w900),
                )
              ],
            ),
            const  SizedBox(
              height: 20,
            ),
            const  BrandLogo(),
            const  SizedBox(
              height: 20,
            ),
            // row of texts
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(fontSize: 18, textColor: Colors.grey, text: 'recently added', fontWeight: FontWeight.w700),
                  CustomText(fontSize: 14, textColor: Colors.grey, text: 'best scale', fontWeight: FontWeight.w700),
                  CustomText(fontSize: 14, textColor: Colors.grey, text: 'saved', fontWeight: FontWeight.w700),
                  CustomText(fontSize: 14, textColor: Colors.grey, text: 'view all', fontWeight: FontWeight.w700),
                ],
              ),
            ),
            const ListViewOfCarDetails(),
          ],
        ),
      ),

    );
  }
}
