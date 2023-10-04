import 'package:flutter/material.dart';
class ChatOne extends StatelessWidget {
  const ChatOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(





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
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 35,
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
                      hintText: 'Search Chat Car',
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
                  width: 35,
                ),
                Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                  size: 40,
                )
/*
                Stack(
                  children: [
                    Positioned(
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 40,
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
*/
              ],
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
          ],
        ),
      ),
    );
  }
}
