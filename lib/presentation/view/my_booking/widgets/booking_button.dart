import 'package:flutter/material.dart';

class BookingButton extends StatelessWidget {
  final String text;
  final Color color;

  const BookingButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
         backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Define border radius
            side: BorderSide(color:color), // Define border color
          ),
        ),
        onPressed: () {
        
        },
        child: Text(text,style: TextStyle(color: color),), 
      ),
    );
  }
}
