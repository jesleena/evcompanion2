
import 'package:flutter/material.dart';

class GreenElevatedButton extends StatelessWidget {
 
  final VoidCallback onPressed;
  final String text;
  const GreenElevatedButton({super.key, required this.text,required this.onPressed,
  }) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
       backgroundColor:Colors.green ,
      minimumSize: Size(500, 35),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      
      onPressed: onPressed,
      child: Text(text),
    );
  }
}