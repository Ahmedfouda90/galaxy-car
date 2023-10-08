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
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(
        backgroundColor: Color(0xFF2B2A29),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/6p.png',
                  height: screenHeight * .473,
                  // width: MediaQuery.of(context).size.width,
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
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Color(0xffEEEEEE),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * .1,
                          ),
                          CustomText(
                              fontSize: 24,
                              // textColor: Colors.white,
                              text: 'sign up',
                              fontWeight: FontWeight.w700),
                          SizedBox(
                            height: screenHeight * .04,
                          ),
                          Container(
                            // width: 300,
                            child: TextFormFieldWidget(
                              hintText: '                 phone number',
                              keyboardType: TextInputType.phone,
                              width: screenWidth * .58,
                              height: screenHeight * .055,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * .03,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupTwo()));
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
                            height: screenHeight * .03,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  fontSize: 12,
                                  textColor: Colors.grey,
                                  text: 'Have an account? ',
                                  // fontWeight: FontWeight.bold


                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: CustomText(
                                    fontSize: 12,
                                    // textColor: Colors.grey,
                                    text: 'Sign in    ',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              )

            ],
          ),
        )

        );
  }
}
