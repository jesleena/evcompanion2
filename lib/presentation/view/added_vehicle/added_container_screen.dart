
import 'package:evcompanion2/presentation/view/added_vehicle/added_vehicle.dart';
import 'package:evcompanion2/presentation/view/added_vehicle/additional_container.dart';
import 'package:evcompanion2/presentation/view/book_slot/book_slot.dart';
import 'package:evcompanion2/presentation/view/qr_code/qr.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';
class SelectedVehicleScreen extends StatelessWidget {
  const SelectedVehicleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return
     SafeArea(
       child: Scaffold(
        body:
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 18,),
           child: Column(
            children: [
              AddedVehicleContainer(imageUrl: "assets/images/ola.jpg", title: "Greenspeed station   ", openFor:"Open 24 hours   ",kms: "4.5 km",costPerHour:  15.00, parkingFee:0, address: "1901 Thornridge Cir,Shiloh,Hawai")
         ,SizedBox(height: 5,),
         AdditionalInfoContainer(steeringInfo: "BS 18548", availabilityInfo: "Available"),
         SizedBox(height: 10,),
         Row(
          children: [
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,// Green text color
              side: BorderSide(color: Colors.green, width: 2), // Green border
            ),
            onPressed: () {
              // Add your action here
            },
            child: Text('Get Direction',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
          ),
          SizedBox(width: 18,),
          SizedBox(
            width: 150,
            child: GreenElevatedButton(text: "Book a slot", onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingSlot(),));
            },),
          )
        
          ],
         ),
         GreenElevatedButton(text: "Pay Now", onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => QrCode(),)),)
            ],
            
            
                 ),
         ),
         ),
     );
  }
}