
import 'package:evcompanion2/presentation/view/bottom_nav_controller.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class BookingStatusContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: const Color.fromARGB(255, 202, 199, 199),
              child: Lottie.asset(
                'assets/animations/Animation - 1697534661678.json',
                width: 80,
                height: 80,
              ),
            ),
          ),
          Text(
            'Slot booked successfully',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none, 
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charging station',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          'Greenspeed station',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          '17 Dec 2023',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                         Text(
                          'Charging port',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          'BS 18548',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: 
                Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charging duration',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          '1 hour',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          'Booking time',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          '10.00 AM',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                         Text(
                          'Total pay',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                        Text(
                          '\$ 15.00',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            decoration: TextDecoration.none, 
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
              ]
                ),
                )
                )
              ],
            ),
          ),
          SizedBox(
            width: 300,
            child: GreenElevatedButton(text: "Go to home", onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BottomNavController(),));
            },),
          )
        ],
      ),
    );
  }
}

class CustomSnackbar {
  static void showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: BookingStatusContainer(),
        
      ),
    );
  }
}

// You can use the custom snackbar as follows:
// CustomSnackbar.showSnackbar(context);