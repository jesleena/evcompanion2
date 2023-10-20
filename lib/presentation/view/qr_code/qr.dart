
import 'package:evcompanion2/presentation/view/booking_review/booking_review_page.dart';
import 'package:evcompanion2/presentation/view/slot_booked/slot_booked.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset(
              'assets/images/scan.png', 
             
            ),
      SizedBox(
    
        child: GreenElevatedButton(text: "Continue", onPressed: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingStatusContainer(),))   ;
        },),
      )
         ],
       ),
      
    );
  }
}