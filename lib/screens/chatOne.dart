import 'package:flutter/material.dart';
import 'package:untitled1/screens/brands.dart';

import '../custom_widgets/custom_text.dart';
class ChatOne extends StatelessWidget {
  const ChatOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Brands()));
          }, icon: Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
            size: 40,
          ) )
                 ],
      ),

      floatingActionButton: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child:
      Image.asset('assets/images/Vector (4).png'),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Chats ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),


            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 600, maxWidth: double.infinity),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 70,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/pngwing.png',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [


                                      Row(
                                        children: [
                                          CustomText(
                                            fontSize: 14,
                                            textColor: Colors.grey,
                                            text: "Mileage 80K   ",
                                          ),
                                          Image.asset('assets/images/امارات.png'),
                                        ],
                                      ),
                                      CustomText(
                                        fontSize: 14,
                                        textColor: Colors.grey,
                                        text: '4:00 PM',
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Ford Reckons',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'wow , that\'s awesome ! ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

/*
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: 600, maxWidth: double.infinity),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, int index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Row(
                              // mainAxisAlignment:MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/pngwing.png',
                                    ),
                                    width: 70,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // SizedBox(height: 15,),
                                    Text(
                                      'Ford Reckons',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'wow , that\'s awsome ! ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),

                                // Text('hbgvc')
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
*/
          ],
        ),
      ),
    );
  }
}
