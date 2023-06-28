import 'package:flutter/material.dart';
import 'login_page.dart';
import 'booking_page.dart';
import 'feedback_screen.dart'; // Import the feedback screen widget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'), // Replace 'assets/background.png' with the actual path to your background image
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: null, // Set the app bar to null
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()), // Empty container to take up remaining space
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo.png', // Replace 'assets/logo.png' with the actual path to your logo image
                  width: 2000,
                  height: 200,
                ),
              ),
              SizedBox(height: 16.0), // Add spacing between logo and buttons
              SizedBox(
                width: 200, // Adjust the width of the buttons
                height: 50, // Adjust the height of the buttons
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                  ),// Change the button's background color here
                ),
              ),
              SizedBox(height: 8.0), // Add smaller spacing between buttons
              SizedBox(
                width: 200, // Adjust the width of the buttons
                height: 50, // Adjust the height of the buttons
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/booking');
                  },
                  child: Text('Book Now'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                  ),// Change the button's background color here
                ),
              ),
              SizedBox(height: 8.0), // Add spacing between buttons
              SizedBox(
                width: 200, // Adjust the width of the buttons
                height: 50, // Adjust the height of the buttons
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/feedback');
                  },
                  child: Text('Give Feedback'), // Text for the feedback button
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                  ),// Change the button's background color here
                ),
              ),
              Expanded(child: Container()), // Empty container to take up remaining space
            ],
          ),
        ),
      ),
    );
  }
}
