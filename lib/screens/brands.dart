import'package:flutter/material.dart';
import 'package:untitled1/screens/same_brand.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black
      ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
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
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SameBrand()));
                          },
                        )
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/images/Group 33906.png',
                    width: 50,
                    height: 20,
                    color: Colors.red,
                  ),
                  suffixIcon: Image.asset(
                    'assets/images/Group 34021 (2).png',
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

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Countries ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints:
              BoxConstraints(maxHeight: 95, maxWidth: double.infinity),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, int index) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/Untitled-2.png',
                                  width: 50),
                              Text(
                                'France',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 18),
                              ),
                            ],
                          ),
                          width: 70,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,


                          ),
                        ),
                      )),
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Brands ',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),


            SingleChildScrollView(

              child: ConstrainedBox(
                constraints:
                BoxConstraints(maxHeight: 600, maxWidth: double.infinity),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    itemBuilder: (context, int index) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffEEEEEE),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: 80,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                15),
                                            // color:Colors.grey,
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFD800),
                                                  Color(0xffF65169),
                                                  Color(0xffBF00C2),
                                                ]),
                                            image: DecorationImage(

                                                image: AssetImage(
                                                  'assets/images/f.png',)
                                            )
                                        ),
                                        child: Image.asset(
                                          'assets/images/f.png', width: 4,
                                          height: 40,),
                                      )
                                  ),
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        // SizedBox(height: 15,),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Text('2020'),
                                            SizedBox(
                                              width: 18,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                  size: 25,
                                                ))
                                          ],
                                        ),
                                        Text(
                                          'Ford Reckons',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              '100 k ml',
                                              style: TextStyle(),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'white',
                                              style: TextStyle(),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              '58,900 \$ ',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  // Text('hbgvc')
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}








