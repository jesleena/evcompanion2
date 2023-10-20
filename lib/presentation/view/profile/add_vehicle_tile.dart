import 'package:flutter/material.dart';

class AddVehicleContainer extends StatefulWidget {
  final String text;

  AddVehicleContainer({required this.text});

  @override
  _AddVehicleContainerState createState() => _AddVehicleContainerState();
}

class _AddVehicleContainerState extends State<AddVehicleContainer> {
  bool isExpanded = false;
  String selectedValue = "Tesla";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: 
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 35.0,
                  child: Text(
                    widget.text,
                    overflow: TextOverflow.ellipsis, // Ensure single line
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: isExpanded
                        ? Icon(Icons.arrow_back_ios)
                        : Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
          if (isExpanded)
            Positioned(
              top: 50, // Adjust this value to control the dropdown position
              right: 16, // Adjust this value to control the dropdown position
              child: Container(
                width: 150, // Adjust the width as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  value: selectedValue,
                  items: <String>["Tesla", "Ola", "Ather", "Other"]
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
