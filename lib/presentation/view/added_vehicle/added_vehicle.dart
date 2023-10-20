import 'package:flutter/material.dart';

class AddedVehicleContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String openFor;
  final String kms;
  final double costPerHour;
  final double parkingFee;
  final String address;

  AddedVehicleContainer({
    required this.imageUrl,
    required this.title,
    required this.openFor,
    required this.kms,
    required this.costPerHour,
    required this.parkingFee,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(134, 218, 210, 210), 
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color.fromARGB(255, 160, 152, 152), width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 380.0,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imageUrl,),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      TextSpan(
                        text: openFor,
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: kms,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
              children: [
                Text(
                  'Cost : \$${costPerHour.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Parking : \$${parkingFee.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Address : $address",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
