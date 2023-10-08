import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/countries/home_page_countries.dart';
import 'package:untitled1/screens/countries/all_countries.dart';
import 'package:untitled1/screens/brands.dart';
import 'package:untitled1/screens/countries/cars_details.dart';
import 'package:untitled1/screens/chatOne.dart';
import 'package:untitled1/screens/home_page/home_page.dart';
import 'package:untitled1/screens/login_and_signup/login_screen.dart';
import 'package:untitled1/screens/same_brand.dart';
import 'package:untitled1/screens/login_and_signup/signup_page.dart';
import 'package:untitled1/test.dart';

void main() {
  runApp(
      // GalaxyApp());

      DevicePreview(builder: (context) => GalaxyApp()));
}

class GalaxyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        fontFamily:'Poppins',
        backgroundColor: Color(0xFF2B2A29)

      ),
      home:LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
