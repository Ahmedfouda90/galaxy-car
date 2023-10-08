import 'package:flutter/material.dart';
import 'package:untitled1/consts/consts.dart';

import '../custom_widgets/custom_container.dart';
import '../custom_widgets/custom_text.dart';
import '../screens/login_and_signup/signup_page.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width*.946;
    var screenHeight=MediaQuery.of(context).size.height*1.15;
    return Align(

      alignment: Alignment.bottomLeft,
      child: Container(
          width: MediaQuery.of(context).size.width,
          // // width: MediaQuery.of(context).size.width,
          // height: screenHeight*.478 ,
          decoration:const  BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40)),
            color:Color(0xffEEEEEE),

          ),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight*.105,
              ),
              Image.asset('assets/images/Group 71.png',
              width: screenWidth*.51,
              height: screenHeight*.12,
              ),
             /* SizedBox(
                height: screenHeight*.028,
              ),*/
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage()));
                },
                child: CustomContainer(
                  width: screenWidth*.58,

                  height:screenHeight*.055,
                  borderRadius: 40,
                  color: Colors.red,
                  child: Center(
                    child:

                    CustomText(
                      text: 'Sign Up',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      textColor: Colors.white,

                    ),
                  ),
                ),
              ),
            /*  SizedBox(
                height: 20,
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Have an account ?',
                    fontSize: 14, /*fontWeight: FontWeight.normal*/
                  ),
                  GestureDetector(
                    child: CustomText(
                      fontWeight: FontWeight.bold,
                      text: ' sign in',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                // height: screenHeight*.217,
              ),

            ],
          )),
    );
  }
}
