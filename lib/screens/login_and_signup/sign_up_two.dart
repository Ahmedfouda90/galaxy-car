import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_page/home_page.dart';

import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import 'package:untitled1/screens/login_and_signup/login_screen.dart';

class SignupTwo extends StatelessWidget {
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
                      hintText: '                 Phone Number',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      hintText: '                         Name',keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
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
