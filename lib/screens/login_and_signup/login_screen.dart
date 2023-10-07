import 'package:flutter/material.dart';
import 'package:untitled1/screens/login_and_signup/signup_page.dart';

import '../../widgets_body/login_body.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image:
              AssetImage('assets/images/Backup_of_Backup_of_helsy 1 (2).png'),
          fit: BoxFit.cover,
        )),
        child: LoginBody(),
      ),
    );
  }
}
