import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/HomePageTwo.dart';
import 'package:untitled1/screens/all_countries.dart';
import 'package:untitled1/screens/brands.dart';
import 'package:untitled1/screens/cars_details.dart';
import 'package:untitled1/screens/chatOne.dart';
import 'package:untitled1/screens/home_page.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/screens/same_brand.dart';
import 'package:untitled1/screens/sign_up_two.dart';
import 'package:untitled1/screens/signup_page.dart';
import 'package:untitled1/test.dart';

void main() {
  runApp(GalaxyApp());

      // DevicePreview(builder: (context) => GalaxyApp()));
}

class GalaxyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      home:LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
