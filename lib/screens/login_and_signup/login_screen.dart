import 'package:flutter/material.dart';
import 'package:untitled1/screens/login_and_signup/signup_page.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_text.dart';
import '../../widgets_body/login_body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(
        backgroundColor: Color(0xFF2B2A29),
        body: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/6p.png',
                  height: screenHeight * .473,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: screenHeight * .08,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      // width: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Color(0xffEEEEEE),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * .105,
                          ),
                          Image.asset(
                            'assets/images/Group 71.png',
                            width: screenWidth * .51,
                            height: screenHeight * .12,
                          ),
                           SizedBox(
                  height: screenHeight*.028,
                ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            child: CustomContainer(
                              width: screenWidth * .58,
                              height: screenHeight * .055,
                              borderRadius: 40,
                              color: Color(0xFF2B2A29),
                              child: Center(
                                child: CustomText(
                                  text: 'Sign Up',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  textColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight*.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: 'Have an account ?',
                                fontSize: 12, /*fontWeight: FontWeight.normal*/
                              ),
                              GestureDetector(
                                child: CustomText(
                                  fontWeight: FontWeight.bold,
                                  text: ' sign in',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
