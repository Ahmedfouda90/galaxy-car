import 'package:flutter/material.dart';


class CountiesDetails extends StatelessWidget {
  const CountiesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return            ConstrainedBox(
      constraints:
      BoxConstraints(maxHeight: 190, maxWidth: double.infinity),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/Untitled-2.png',
                      width: 85),
                  Text(
                    'France',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  Text(
                    'over 1000',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      // fontSize: 24
                        color: Colors.grey),
                  ),
                ],
              ),
              width: 150,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffFFD800),
                        Color(0xffF65169),
                        Color(0xffBF00C2),
                      ])),
            ),
          )),
    )
    ;
  }
}


