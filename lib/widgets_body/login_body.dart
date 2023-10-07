import 'package:flutter/material.dart';
import 'package:untitled1/consts/consts.dart';

import '../custom_widgets/custom_container.dart';
import '../custom_widgets/custom_text.dart';
import '../screens/login_and_signup/signup_page.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: MediaQuery.of(context).size.width,
              // width: MediaQuery.of(context).size.width,
              height: 300,
              decoration:const  BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                color:Color(0xffEEEEEE),

              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/Group 71.png'),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: CustomContainer(
                      height: 45,
                      borderRadius: 40,
                      color: Colors.black,
                      width: 210,
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
                    height: 20,
                  ),
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
                  )
                ],
              )),
        )

      ],
    );
  }
}
