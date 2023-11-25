import 'package:flutter/material.dart';

class BaalbekPage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/Baalbek3.webp',
    'assets/Baalbek4.jpg',
    'assets/Baalbak5.jpg',
    'assets/Baalbek6.jpg',
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
                'assets/Baalbek1.jpg',
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
              'Baalbek',
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
                'Baalbek Castle is a historical masterpiece, evolving from a Phoenician sanctuary to a Roman treasure. With colossal columns and intricate carvings, it epitomizes ancient craftsmanship. The Temple of Jupiter and Temple of Bacchus stand out, inviting visitors to witness a rich history. As a UNESCO World Heritage site, it offers a concise yet profound journey through time.',
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
