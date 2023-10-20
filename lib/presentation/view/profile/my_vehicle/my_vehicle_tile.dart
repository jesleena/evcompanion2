import 'package:flutter/material.dart';

class MyVehicleTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final String iconText;
  final String imagePath;

  MyVehicleTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60, // Adjust the size as needed
        height: 60, // Adjust the size as needed
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8), // Add spacing between the icon and text
          Text(iconText),
        ],
      ),
    );
  }
}
