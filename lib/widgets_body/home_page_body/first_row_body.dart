import 'package:flutter/material.dart';

import '../../screens/HomePageTwo.dart';
import '../../screens/brands.dart';

class FirstRowBody extends StatelessWidget {
  const FirstRowBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
        ),

        Container(
          width: 250,
          child: TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Image.asset(
                'assets/images/Group 33906.png',
                width: 50,
                height: 20,
                color: Colors.red,
              ),
              filled: true,
              fillColor: Colors.white,
              isDense: true,
              hintText: 'Search your Car',
              // contentPadding: EdgeInsets.only(bottom: 50),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                    strokeAlign: 5,
                  ),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),

        Stack(
          children: [
            Positioned(
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageTwo()));
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
            Positioned(
                top: 10,
                left: 22,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                )),
          ],
        ),
      ],
    )

    ;
  }
}


