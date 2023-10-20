
import 'package:evcompanion2/presentation/view/payment_model/payment_tile.dart';
import 'package:evcompanion2/presentation/view/qr_code/qr.dart';
import 'package:evcompanion2/presentation/view/slot_booked/slot_booked.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});                        // to do implement the radio button click

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment method",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
      ),
      body:
       Padding(
         padding: const EdgeInsets.all(18.0),
         child: Column(
          children: [
            SizedBox(height: 15,),
            Text("Payment method",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            PaymentMethodTile("Paypal", false),
            SizedBox(height: 10,),
             PaymentMethodTile("Google Pay", false),
            SizedBox(height: 10,),
             PaymentMethodTile("Apple pay", false),
            SizedBox(height: 300,),
            GreenElevatedButton(text: "Continue", onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => QrCode(),));
            },)
          ],
             ),
       ),
    );
  }
}