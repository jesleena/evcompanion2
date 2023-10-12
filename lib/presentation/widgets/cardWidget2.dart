import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardWidget2 extends StatelessWidget {

  final String image;
  final String name;
  final String price;
  final String state;
  static final DateTime someDateTime = DateTime.now();
  static final DateFormat formatter = DateFormat.yMd();
  static final String formattedDate = formatter.format(someDateTime);



  const CardWidget2({
    required this.image,
    required this.name,
     required this.price,
    required this.state,

  });

  @override
  Widget build(BuildContext context) =>


      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.grey[200],
        child:
        InkWell(
          child: ListTile(horizontalTitleGap: 30,
            leading:
            Container(
              height: 50.h,
                width: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover),
            ),
            ),

            title: Text(name),
            subtitle:Text(price),

            trailing:
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattedDate),
                SizedBox(height:30,child: ElevatedButton(onPressed:(){}, child:  Text(state)))
              ],
            ),
          onTap: (){},
        ),),);
}