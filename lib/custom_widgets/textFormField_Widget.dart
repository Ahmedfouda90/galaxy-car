import 'dart:ffi';

import 'package:flutter/material.dart';
class TextFormFieldWidget extends StatelessWidget{

  TextFormFieldWidget({
    @required this.padding=70.0,required this.hintText,
   @ required this.keyboardType=TextInputType.number,
    @required this.borderColor=Colors.white54,
});

  final String hintText ;
  final double padding;
  final TextInputType keyboardType;
  final Color borderColor;
  @override


  Widget build(BuildContext context) {
  return Container(
    width: 300,
    child: TextFormField(

      maxLines: 1,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(50)
        ) ,
        suffixIcon: IconButton(
          onPressed: (){},icon:Icon(
          Icons.search
        ),
        ),
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        hintText:hintText,
        // contentPadding: EdgeInsets.only(bottom: 50),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: 2,strokeAlign: 5,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    ),
  );
  }




}




















