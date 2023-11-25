import 'package:flutter/material.dart';
import 'explore.dart'; // Import the explore.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/MainPage.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Cedar Tree Image
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            left:50,
            right: 50,
            child: Image.asset(
              'assets/cedartree.png', // Replace with your image path
              width: 200.0, // Adjust the width as needed
              height: 200.0, // Adjust the height as needed
            ),
          ),
          // Text on the Image
          Positioned(
            top: 90.0, // Adjust the positioning as needed
            left: 20.0, // Adjust the left position
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Discover Lebanon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42.0, // Adjust the font size
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 12.0),
                Text(
                  'A Journey Through Beauty \nand Culture',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0, // Adjust the font size
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          // Get Started Button
          Positioned(
            bottom: 75.0, // Adjust the positioning as needed
            left: 80.0,
            right: 80.0,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the explore.dart page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExplorePage()),
                );
              },
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Change the button color
                foregroundColor: Colors.black, // Change the text color
                padding: EdgeInsets.symmetric(
                  vertical: 18.0, // Adjust the vertical padding
                  horizontal: 24.0, // Adjust the horizontal padding
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the corner radius
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Explore Page
