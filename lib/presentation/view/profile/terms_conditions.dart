import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Introduction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              'These Terms and Conditions ("Terms") govern the use of the EV Vehicle Booking App ("App"). By using this App, you agree to comply with these Terms.',
            ),
            // Add more sections for different parts of the terms and conditions

            SizedBox(height: 16.0),

            Row(
              children: [
                Checkbox(
                  value: false, // Use a state variable to manage the state of the checkbox
                  onChanged: (value) {
                    // Implement the logic to change the state when the user agrees to terms
                  },
                ),
                Text(
                  'I agree to the terms and conditions',
                ),
              ],
            ),

            SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                // Implement the action when the user agrees to the terms
              },
              child: Text('Accept'),
            ),
          ],
        ),
      ),
    );
  }
}

