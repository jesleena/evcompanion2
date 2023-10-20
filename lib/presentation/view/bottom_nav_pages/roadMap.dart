import 'package:evcompanion2/presentation/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class RoadMap extends StatefulWidget {

  @override
  State<RoadMap> createState() => _RoadMapState();
}

class _RoadMapState extends State<RoadMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(

          children: <Widget>
      [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/kerala.jpeg'),
                    fit: BoxFit.cover),
      ),
    ),

    ]
    ),
    );
  }
}
