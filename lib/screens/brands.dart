import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_page/recently_added.dart';
import 'package:untitled1/screens/same_brand.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Container(
          height: screenHeight*.0438,
          width: screenWidth*.533,
          child: TextFormField(

            // maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: screenHeight*.01),
              prefixIcon: Icon(
                Icons.search,
                size: 25,
                color: Color(0xffBF00C2),
              ),
              filled: true,
              fillColor: Colors.white,
              isDense: true,
              hintText: 'Search Chat Car',
              hintStyle: TextStyle(
                  textBaseline: TextBaseline.alphabetic
              ),

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
        centerTitle: true     ,
        actions: [


          Stack(
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecentlyAdded()));
                    },
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
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

/*
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Brands()));
              },
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
                size: 30,
              )),
*/
        ],
      ),

      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenWidth*.04),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight*.04,
              ),


              Row(
                children: [
                  Text(
                    'Brands ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight*.02,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: 900, maxWidth: double.infinity),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 16,
                    itemBuilder: (context, int index) => Container(
                      margin: EdgeInsets.symmetric(vertical: screenHeight*.015),
                      width: screenWidth*.846,
                      height: screenHeight*.136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffEEEEEE),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            width: screenHeight*.1,
                            height: screenWidth*.21,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(15),
                                // color:Colors.grey,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffBF00C2),
                                      Color(0xffF65169),
                                      Color(0xffFFD800),
                                    ]),

                            ),
                            child: Image.asset(
                              'assets/images/f.png',
                              width: screenHeight*.087,
                              height: screenWidth*.21,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                // SizedBox(height: 15,),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2020'),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite_border,
                                          size: 25,
                                        ))
                                  ],
                                ),
                                Text(
                                  'BMW',
                                  style: TextStyle(
                                      fontSize: 18,
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
                                      '\$ 58,900',
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
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
