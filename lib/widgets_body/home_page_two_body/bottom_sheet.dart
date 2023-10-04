import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/custom_text.dart';

class BottomSheett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .55,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          )),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 5,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                        fontSize: 24,
                        textColor: Colors.black,
                        text: 'Filter',
                        fontWeight: FontWeight.w800)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        fontSize: 18,
                        textColor: Colors.black,
                        text: 'Price',
                        fontWeight: FontWeight.w800),
                    Image.asset(
                      'assets/images/Group 34044.png',
                      width: 40,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 7),
                        child: Text(
                          '100.00 \$ ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      width: 130,
                      height: 30,
                    ),
                    Container(
                      width: 15,
                      height: 5,
                      color: Colors.black,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 7),
                        child: Text(
                          '100.00 \$ ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      width: 130,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Slider(
                // divisions: 2,
                focusNode: FocusNode(canRequestFocus: true),
                autofocus: true,
                activeColor: Colors.black,
                value: 100,
                max: 220,
                min: 80,
                onChanged: (double value) {},
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        fontSize: 18,
                        textColor: Colors.black,
                        text: 'Year',
                        fontWeight: FontWeight.w800),
                    Image.asset(
                      'assets/images/Group 34032.png',
                      width: 40,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 20, maxWidth: 250),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, int index) => CustomText(
                            fontSize: 16,
                            textColor: Colors.black,
                            text: '2024   ',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        fontSize: 18,
                        textColor: Colors.black,
                        text: 'Color',
                        fontWeight: FontWeight.w800),
                    Image.asset(
                      'assets/images/Group 34032.png',
                      width: 40,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.pink),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.indigoAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
