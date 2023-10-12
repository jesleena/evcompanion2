import 'package:evcompanion2/presentation/view/add_vehicle.dart';
import 'package:evcompanion2/presentation/widgets/cardwidget3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:evcompanion2/presentation/widgets/customButtom.dart';
class MyVehicle extends StatefulWidget {


  @override
  State<MyVehicle> createState() => _MyVehicleState();
}

class _MyVehicleState extends State<MyVehicle> {
  String name='Tesla';
  String type='type3';
  String image="assets/tesla.jpg";
  String ccs='ccs2';
  void Navigate()  {

    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AddVehicle()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                          Text( "My Vehicle",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40), ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (context,index) {
                                return CardWidget3( image: image, name: name,  type: type, ccs: ccs,) ;
                              }
                          ),
                                    customButton("Add vehicle",()=>Navigate()),

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


