import 'package:evcompanion2/presentation/view/my_booking/widgets/booking_tile.dart';
import 'package:flutter/material.dart';
class MyBookingPage extends StatelessWidget {
  const MyBookingPage({super.key});
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bookings'),
      leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon:Icon(Icons.arrow_back_ios_new) ),
      ),
      body:
       ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            CustomListTile(title: "Greenspeed Station",subtitle: "\$80", color: Colors.red,text: "Cancelled",),
             CustomListTile(title: "Greenspeed Station",subtitle: "\$80",text: "Completed", color: Colors.green),
              CustomListTile(title: "Greenspeed Station",subtitle: "\$80",text: "Pending", color: Colors.yellow),
               CustomListTile(title: "Greenspeed Station",subtitle: "\$80",text: "Cancelled", color: Colors.red),
               CustomListTile(title: "Greenspeed Station",subtitle: "\$80",text: "Completed", color: Colors.green),
          ],
             ),
       
    );
  }
}