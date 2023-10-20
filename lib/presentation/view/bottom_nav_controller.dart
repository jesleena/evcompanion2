import 'package:evcompanion2/presentation/view/booking_review/booking_review_page.dart';
import 'package:flutter/material.dart';
import '../../utils/colorConstants.dart';
import 'bottom_nav_pages/profile.dart';
import 'bottom_nav_pages/viewBooking.dart';
import 'bottom_nav_pages/home.dart';
import 'bottom_nav_pages/roadMap.dart';
import 'package:shared_preferences/shared_preferences.dart';
class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {

  final _pages = [
    Home(),
    RoadMap(),
    BookingReviewPage(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: myappColor,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map), label: "Road Map"),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: "View Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
           
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}

