import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardWidget3 extends StatelessWidget {

  final String image;
  final String name;
  final String type;
  final String ccs;


  const CardWidget3({
    required this.image,
    required this.name,
    required this.type,
    required this.ccs,

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
          child: ListTile(horizontalTitleGap: 50,

            leading:
            Container(
              height: 100.h,
              width: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover),
              ),
            ),

            title: Text(name),
            subtitle:Wrap(children:[Text(type),Text(ccs)] ),

            onTap: (){},
          ),),);
}