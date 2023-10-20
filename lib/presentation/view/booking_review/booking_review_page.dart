
import 'package:evcompanion2/presentation/view/payment_model/payment_method_screen.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';

class BookingReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Booking'),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child:
         SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Vehicle',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  title: Text('Car Booking'),
                  subtitle: Text('Car Model: XYZ-1234'),
                  leading: Image.asset(
                    'assets/images/tesla.jpeg', 
                    width: 100,
                    height: 80,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  title: Text('Additional Services'),
                  subtitle: Text('Service Type: Basic'),
                ),
              ),
              SizedBox(height: 10,),
              Text("Charging station",style: TextStyle(fontWeight: FontWeight.bold),),
                ListTile(
                leading: Icon(Icons.charging_station_outlined,color: Colors.green,size: 38,),
                title: Text('Green speed station'),
                subtitle: Text('4140 Parker Rd ,Allentown Mexico'),
              ),
              SizedBox(height: 10,),
              Container(
                height: 75,
                color: Colors.grey[200],
                child: Column(
              
                  children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Booking date"),
                       Text("Time of arrival"),
                        Text("Charging duration"),
                         
                    ],
                  ),
                  SizedBox(width: 100,),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dec 17,2023"),
                       Text("10:00 AM"),
                        Text("1 Hour"),
                         
                    ],
                  ),
                ],
              )
                ],),
              ),
              SizedBox(height: 10,),
              Container(
              color: Colors.grey[200], 
              
              padding: EdgeInsets.all(16),
              child:
               Column(
                 children: [
                   Row(
                     children: [
                       Column(
                        children:
                        
                         [
                          Text(
                            'Amount estimation',
                          
                          ),
                          Text(
                            'Tax',
                            
                          ),
                         ]
                       ),
                       SizedBox(width: 8,),
         Column(
                        children:
                        
                         [
                          Text(
                            '\$ 15.00',
                          
                          ),
                          Text(
                            'Free',
                            
                          ),
                         ]
                       ),
                     ],
                   ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                     Row(children: [
                       Text(
                        'Total',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 155,),
                      Text(
                        '\$ 15.00',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                     ],)
                    
                 ],
               ),
               
              ),
              
              GreenElevatedButton(text: "Pay now", onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentMethodScreen(),));
              },)
            ],
                 
                 ),
         ),
      ),
    );
  }
}