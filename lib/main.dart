import 'package:evcompanion2/presentation/view/book_slot/book_slot.dart';
import 'package:evcompanion2/presentation/view/my_booking/my_booking.dart';
import 'package:evcompanion2/presentation/view/my_booking/widgets/booking_tile.dart';
import 'package:evcompanion2/presentation/view/profile/my_booking.dart';
import 'package:evcompanion2/presentation/view/profile/terms_conditions.dart';
import 'package:evcompanion2/utils/colorConstants.dart';
import 'package:flutter/material.dart';
import 'package:evcompanion2/presentation/view/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()  {

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ev_companion',

          theme: new ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor:myappColor),
              appBarTheme: AppBarTheme(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black//here you can give the text color
              )
          ),
          //

          home: 
         SplashScreen()
      
        );
      },
    );
  }
}