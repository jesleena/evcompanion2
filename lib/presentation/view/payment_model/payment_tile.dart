
import 'package:flutter/material.dart';
class PaymentMethodTile extends StatefulWidget {
  final String title;
  bool isSelected;
  PaymentMethodTile(this.title, this.isSelected);
  @override
  _PaymentMethodTileState createState() => _PaymentMethodTileState();
}
class _PaymentMethodTileState extends State<PaymentMethodTile> {
  @override
  Widget build(BuildContext context) {
    return                       ///Remmove scaffold
     Card(
      elevation: 3,
       child: ListTile(
        tileColor: Colors.grey[200],
          leading: CircleAvatar(
            backgroundColor: Colors.blue, 
            child: Icon(
              Icons.credit_card,
              color: Colors.white,
            ),
          ),
          title: Text(widget.title),
          trailing: Radio(
            value: widget.title,
            groupValue: 'selected_payment',
            onChanged: (value) {
              setState(() {
                widget.isSelected = true;
              });
            },
          ),
         
         ),
     );
  }
}