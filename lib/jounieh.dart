import 'package:flutter/material.dart';

class JouniehPage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/jounieh2.jpg',
    'assets/jounieh3.jpg',
    'assets/jounieh4.jpg',
    'assets/jounieh5.jpg',

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
                'assets/jounieh1.jpg',
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
              'Jounieh',
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
                'Jounieh, situated along the Mediterranean coast in Lebanon, is a dynamic city known for its scenic bay, vibrant nightlife, and cultural attractions. The iconic Our Lady of Lebanon statue overlooks the bay, while the bustling Maameltein district offers a lively atmosphere with restaurants, shops, and entertainment, making Jounieh a captivating destination.',
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