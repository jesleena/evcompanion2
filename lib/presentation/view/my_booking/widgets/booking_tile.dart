import 'package:evcompanion2/presentation/view/my_booking/widgets/booking_button.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final Color color;
  final String title;
  final String subtitle;
  const CustomListTile({super.key, required this.text, required this.color,required this.title,required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 5,
      child: ListTile(
          leading: Container(
            width: 50,
            height: 50, 
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),// Create a circular container
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/tesla.jpeg'
                ), 
                
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('25-02-2022'),
              BookingButton(text: text, color: color)
            ],
          ),
        
      ),
    );
  }
}
