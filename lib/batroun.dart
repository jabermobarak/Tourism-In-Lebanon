import 'package:flutter/material.dart';

class BatrounPage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/batroun2.jpg',
    'assets/batroun3.jpg',
    'assets/batroun4.jpg',
    'assets/batroun5.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRRect(
              child: Image.asset(
                'assets/batroun1.jpg',
                width: 370.0,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text "Batroun"
          Positioned(
            top: 320.0,
            left: 20.0,
            child: Text(
              'Batroun',
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Text Description
          Positioned(
            top: 370.0,
            left: 20.0,
            child: Container(
              width: 370.0,
              child: Text(
                'Batroun, a charming coastal town in Lebanon, captivates with its rich history and vibrant atmosphere. Known for its ancient Phoenician wall, traditional souks, and lively waterfront, Batroun offers a delightful blend of culture, relaxation, and culinary delights. Visitors can explore historical sites, unwind on sandy beaches, and savor the town is distinctive character, making it a must-visit destination along the Lebanese coastline.',
                style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.black38,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          // Small Images Gallery
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 130.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: smallImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        smallImages[index],
                        width: 140.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}