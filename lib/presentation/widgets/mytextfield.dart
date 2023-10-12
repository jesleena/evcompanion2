import 'package:flutter/material.dart';
Widget myTextField(String hintText,String labelText,keyBoardType,controller){
  return TextField(
    keyboardType: keyBoardType,
    controller: controller,
    decoration: InputDecoration(border: OutlineInputBorder(),hintText: hintText,labelText:labelText),
   // style:  textStyle3 ,
  );
}