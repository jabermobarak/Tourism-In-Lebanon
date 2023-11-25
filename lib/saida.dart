import 'package:flutter/material.dart';
class SidaPage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/saida2.jpg',
    'assets/saida3.jpg',
    'assets/saida4.jpg',
    'assets/saida5.jpg',
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
                'assets/saida1.jpg',
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
              'Saida',
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
                'Saida Castle, also known as Sidon Sea Castle, is a historic fortress located in the coastal city of Sidon (Saida) in Lebanon. Positioned at the water is edge, this imposing castle has a rich history that spans centuries and reflects the strategic importance of Sidon as a maritime center Today, Saida Castle stands as an iconic landmark.',
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

