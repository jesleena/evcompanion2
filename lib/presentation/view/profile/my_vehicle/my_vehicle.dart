import 'package:evcompanion2/presentation/view/add_vehicle.dart';
import 'package:evcompanion2/presentation/view/profile/my_vehicle/my_vehicle_tile.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';

class MyVehicleScreen extends StatelessWidget {
  const MyVehicleScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Vehicles'),leading: IconButton(onPressed: () => Navigator.of(context).pop, icon: Icon(Icons.arrow_back_ios_new)),),
body: Column(
  children: [
   ListView(
   shrinkWrap: true,
   children: [
    MyVehicleTile(title: "          Tesla Model 3", subtitle: "Type 2", icon: Icons.circle_notifications_outlined, iconText: "    CCS1", imagePath: "assets/images/tesla.jpeg"),
 
 
    MyVehicleTile(title: "          Ola s1 pro", subtitle: "Type 3", icon: Icons.circle_notifications_outlined, iconText: "    CCS2", imagePath: "assets/images/olas.png"),
    
    MyVehicleTile(title: "          Tesla Truck", subtitle: "Type 2", icon: Icons.circle_notifications_outlined, iconText: "    CCS4", imagePath: "assets/images/Cybertruck_91.jpg"),
    
    MyVehicleTile(title: "          Tesla Model 4", subtitle: "Type 2", icon: Icons.circle_notifications_outlined, iconText: "    CCS1", imagePath: "assets/images/tesla.jpeg"),
   ],
   ) ,
   SizedBox(height: 150,),
   GreenElevatedButton(text: "Add Vehicle", onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddVehicle(),)) ,)
  ],
),
    );
  }
}