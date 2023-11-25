import 'package:flutter/material.dart';
import 'byblos.dart';
import 'anjar.dart';
import 'bcharre.dart';
import 'saida.dart';
import 'tyre.dart';
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: [
        // Background Image
        Image.asset(
          'assets/elrawche1.jpg',
          fit: BoxFit.cover,
        ),

        // Positioned for Places
        Positioned(
          top: 85.0,
          left: 20.0,
          child: Text(
            'Places',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Positioned for Popular
        Positioned(
          top: 106.0,
          left: 20.0,
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // List of Images
        Positioned(
          top: 145.0,
          left: 20.0,
          right: 20.0,
          bottom: 0.0,
          child: ListView(
            scrollDirection: Axis.vertical,


          ),
        ),
      ],
    ),
  );
}

void openCorrespondingPage(Map<String, String> place) {
  switch (place['title']) {
    case 'Byblos':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ByblosPage()),
      );
      break;
    case 'Anjar':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AnjarPage()),
      );
      break;
    case 'Bcharre':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BcharrePage()),
      );
      break;
    case 'Saida':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SidaPage()),
      );
      break;
    case 'Tyre':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TyrePage()),
      );
      break;
  // Add cases for other places as needed
  }
}

Widget buildImageCard(
    {required String imagePath, required String title, required VoidCallback onTap}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              width: 370.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 9,
            left: 12,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}
