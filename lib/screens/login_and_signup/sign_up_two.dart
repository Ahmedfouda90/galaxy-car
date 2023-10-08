import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_page/home_page.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import 'package:untitled1/screens/login_and_signup/login_screen.dart';

class SignupTwo extends StatelessWidget {
  const SignupTwo({super.key});

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
                      child:  Column(
                        children: [
                          SizedBox(height: screenHeight*.06),
                          Text(
                            'sign up',
                            style: TextStyle(

                              // color: Colors.white,

                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: screenHeight*.04),

                          TextFormFieldWidget(

                            width: screenWidth * .58,
                            height: screenHeight * .055,
                            hintText: '                 Phone Number',
                          ),
                          SizedBox(height: screenHeight*.02),

                          TextFormFieldWidget(
                            width: screenWidth * .58,
                            height: screenHeight * .055,
                            hintText: '                         Name',keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: screenHeight*.02),

                          TextFormFieldWidget(
                            width: screenWidth * .58,
                            height: screenHeight * .055,
                            hintText: '                          Age',
                          ),
                          SizedBox(height: screenHeight*.02),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
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
                          SizedBox(height: screenHeight*.02),

                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(fontSize: 14,
                                  textColor: Colors.grey,
                                  text: 'Have account? ',
                                  // fontWeight: FontWeight.bold
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: CustomText(fontSize: 14,
                                  // textColor: Colors.grey,
                                  text: 'Sign in',
                                  // fontWeight: FontWeight.bold,
                                  textColor: Colors.black,),),
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

/*
class SignupTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

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
                  height: 358,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color:
                      // Colors.red
                      Color(0xffD9D9D9)),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'sign up',
                      style: TextStyle(

                          // color: Colors.white,

                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      width: screenWidth * .58,
                      height: screenHeight * .055,
                      hintText: '                 Phone Number',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      width: screenWidth * .58,
                      height: screenHeight * .055,
                      hintText: '                         Name',keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      width: screenWidth * .58,
                      height: screenHeight * .055,
                      hintText: '                          Age',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
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
                          CustomText(fontSize: 14,
                              textColor: Colors.grey,
                              text: 'Have an account ?   ',
                              fontWeight: FontWeight.bold),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: CustomText(fontSize: 14,
                                // textColor: Colors.grey,
                                text: 'Sign in    ',
                                fontWeight: FontWeight.bold, textColor: Colors.black,),),
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
