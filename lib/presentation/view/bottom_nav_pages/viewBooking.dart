import 'package:evcompanion2/presentation/widgets/cardWidget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ViewBooking extends StatefulWidget {


  @override
  State<ViewBooking> createState() => _ViewBookingState();
}

class _ViewBookingState extends State<ViewBooking> {
 String name='Green Speed Station';
 String price='\$80';
 String image="assets/charging.jpeg";
 String state='Completed';
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(

                          child: Column(
                            children: [
                              Text( "My Booking",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40), ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (context,index) {
                                    return CardWidget2( image: image, name: name, price: price, state: state,) ;
                                  }
                              ),
                            ],
                          ),
                        ),
                      ],
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

