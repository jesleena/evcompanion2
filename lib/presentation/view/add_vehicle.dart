
import 'package:evcompanion2/presentation/view/added_vehicle/added_container_screen.dart';
import 'package:evcompanion2/presentation/view/profile/add_vehicle_tile.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';

class AddVehicle extends StatelessWidget {
  const AddVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Vehicle details'),leading: Icon(Icons.arrow_back_ios),
      backgroundColor: Colors.transparent,),
      body: 
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [SizedBox(height: 35,),
          Text("             Choose how your machine \n           is connected to the Carsana Secur...",style: TextStyle(fontWeight: FontWeight.bold),),
         
          SizedBox(height: 15,),
          AddVehicleContainer(text: "Select vehicle"),
          SizedBox(height: 15,),
          AddVehicleContainer(text: "Select model"),
          SizedBox(height: 15,),
          AddVehicleContainer(text: "Select trip"),
          SizedBox(height: 300,),
          GreenElevatedButton(text: "Add vehicle", onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SelectedVehicleScreen(),)),)
          ],
        ),
      ),
    );
  }
}