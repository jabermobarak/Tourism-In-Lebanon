import 'package:flutter/material.dart';
class TyrePage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/tyre2.jpg',
    'assets/tyre3.jpg',
    'assets/tyre4.jpg',
    'assets/tyre5.jpg',

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
                'assets/tyre1.jpg',
                width: 370.0,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text "Baalbek"
          Positioned(
            top: 320.0,
            left: 20.0,
            child: Text(
              'Tyre',
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
                'Tyre Castle, or Tyre is Crusader Castle, is a historic fortress situated in the city of Tyre (Sour) along the southern coast of Lebanon. Built during the Crusader period, specifically in the 12th century, the castle reflects the strategic significance of Tyre as a maritime and trading hub Today, Tyre Castle serves as a historical attraction, allowing visitors to step back in time and envision the strategic importance of this coastal fortress during the medieval period.',
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

