import 'package:flutter/material.dart';

class CountiesDetails extends StatelessWidget {
  const CountiesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width * .946;
    var screenHeight = MediaQuery.of(context).size.height * 1.15;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: screenHeight*.21, maxWidth: double.infinity),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, int index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(

                  width: screenWidth*.3,
                  // height: screenHeight*1.171,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFFD800),
                            Color(0xffF65169),
                            Color(0xffBF00C2),
                          ])),

                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight*.02,
                      ),
                      Image.asset('assets/images/Untitled-2.png', /*width: 85*/),
                      Text(
                        'France',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
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
                ),
              )),
    );
  }
}
