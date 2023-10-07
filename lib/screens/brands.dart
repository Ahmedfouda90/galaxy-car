import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_page/recently_added.dart';
import 'package:untitled1/screens/same_brand.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

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
          Stack(
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RecentlyAdded()));
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
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
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
            SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: 900, maxWidth: double.infinity),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, int index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: double.infinity,
                            height: 120,
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
                                          image: DecorationImage(
                                              image: AssetImage(
                                            'assets/images/f.png',
                                          ))),
                                      child: Image.asset(
                                        'assets/images/f.png',
                                        width: 4,
                                        height: 40,
                                      ),
                                    )),
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
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
