import 'package:flutter/material.dart';

class CardWidget1 extends StatelessWidget {

  final IconData icons;
   final String iconName;
   final Widget pageName;


  const CardWidget1({
    required this.icons,
    required this.iconName,
    required  this. pageName,
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
            leading: Icon(icons,color: Colors.black,),
            title: Text(iconName),
            trailing: Icon(Icons.navigate_next),
          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>pageName));}


        ),);
}