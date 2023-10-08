import 'package:flutter/material.dart';
import 'package:untitled1/screens/same_brand.dart';

import '../../custom_widgets/custom_text.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

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
                     /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecentlyAdded()));*/
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
      /*AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 40,
          ),
        ),
        title: TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Color(0xffBF00C2),
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
        actions: [
          Stack(
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () {
                    *//*  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SameBrand()));
            */
      /*
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
      ),*/
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenWidth*.04),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight*.04,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'recently added',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'best scale',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'saved',
                      fontWeight: FontWeight.w700),
                  CustomText(
                      fontSize: 14,
                      textColor: Colors.grey,
                      text: 'view all',
                      fontWeight: FontWeight.w700),
                ],
              ),
              SizedBox(
                height: screenHeight*.01,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: 900, maxWidth: double.infinity),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 18,
                    itemBuilder: (context, int index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      width: screenWidth*.846,
                      height: screenHeight*.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffEEEEEE),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        /*  Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              // color:Colors.grey,
*/
/*
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/image 24.png',
                                ),
                              ),
*/
/*
                            ),
                            child: Image.asset(
                              'assets/images/image 24.png',width: 100,
                            ),
                          ),*/

                         Image.asset(
                        'assets/images/image 24.png',height: screenHeight*.3,),
                          SizedBox(width: screenWidth*.02,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: screenHeight*.01),
                               /* Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2020'),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite_border,
                                          size: 25,
                                        ))
                                  ],
                                ),*/
                                Text('2020'),

                                Text(
                                  'Ford Reckons',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),

                                SizedBox(height: screenHeight*.01,),

                                Row(

                                  children: [
                                    Image.asset(
                                        'assets/images/امارات.png'),
                                    SizedBox(
                                      width: screenWidth*.04,
                                    ),
                                    Text(
                                      'EWD 50.000',
                                      style: TextStyle(
                                          color: Color(0xffBF00C2)
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth*.04,
                                    ),
                                    Text(
                                      '100k Mi.',
                                    ),
                                  ],
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),

                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                size: 25,
                              ))
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
