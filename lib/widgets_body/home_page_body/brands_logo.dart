import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             ConstrainedBox(
      constraints:
      BoxConstraints(maxHeight: 70, maxWidth: double.infinity),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Image.asset(
                'assets/images/f.png',
                width: 50,
              ),
              width: 60,
              height: 45,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(250),
                  color: Colors.white,
                  shape: BoxShape.circle),
            ),
          )),
    )
    ;
  }
}



