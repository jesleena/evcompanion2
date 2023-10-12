import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddVehicle extends StatefulWidget {


  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,


        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 40.h,
              ),

              Expanded(
                  child: SingleChildScrollView(
                    child: Container(

                      child: Column(
                        children: [
                          Text( "Add Vehicle",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40), ),



                        ],
                      ),
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );

  }
}