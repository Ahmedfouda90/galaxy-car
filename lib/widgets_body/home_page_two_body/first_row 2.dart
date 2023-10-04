import 'package:flutter/material.dart';

import '../../screens/brands.dart';

class FirstRow00 extends StatelessWidget {
  const FirstRow00({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 40,
          ),
        ),
        Image.asset('assets/images/Group 34019.png'),
        Stack(
          children: [
            Positioned(
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (
                      context) => Brands()));
                },
                icon: Icon(
                  Icons.notifications_none,size: 40,
                ),
                color: Colors.white,
              ),
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



