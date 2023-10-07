import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';
import 'package:untitled1/screens/login_and_signup/login_screen.dart';
import 'package:untitled1/screens/login_and_signup/sign_up_two.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('oinjnijkn'),
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image:
              AssetImage('assets/images/Backup_of_Backup_of_helsy 1 (2).png'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width:
                    // 410,
                    MediaQuery.of(context).size.width,
                height: 300,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color:  Color(0xffEEEEEE)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                        fontSize: 24,
                        // textColor: Colors.white,
                        text: 'sign up',
                        fontWeight: FontWeight.w700),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // width: 300,
                      child: TextFormFieldWidget(
                        hintText: '                 phone number',
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupTwo()));
                      },
                      child: SignInOrUpButton(
                        text: 'sign up',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125),
                      child: Row(
                        children: [
                          CustomText(
                              fontSize: 14,
                              textColor: Colors.grey,
                              text: 'Have an account ?   ',
                              fontWeight: FontWeight.bold),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: CustomText(
                                fontSize: 14,
                                // textColor: Colors.grey,
                                text: 'Sign in    ',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
