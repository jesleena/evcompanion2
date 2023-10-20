import 'package:evcompanion2/presentation/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(

          children: <Widget>
          [
           InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 1.0,
          maxScale: 2.0, // Adjust the max scale as needed
          child: Container(
            
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/kerala.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
           )

          ]
      ),
    );
  }
}
