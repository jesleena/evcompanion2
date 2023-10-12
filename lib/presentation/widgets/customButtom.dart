import 'package:flutter/material.dart';
import '../../utils/colorConstants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton (String buttonText,onPressed){
  return SizedBox(
    width: .95.sw,
    height: 56.h,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text( buttonText, style: myButtonStyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: myappColor,
        elevation: 3,
      ),
    ),
  );
}