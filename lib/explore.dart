import 'package:flutter/material.dart';
import 'baalbek.dart';
import 'jeita.dart';
import 'batroun.dart';
import 'jounieh.dart';
import 'byblos.dart';
import 'anjar.dart';
import 'bcharre.dart';
import 'saida.dart';
import 'tyre.dart';
class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Map<String, String>> places = [
    {"imagePath": 'assets/Baalbek1.jpg', "title": 'Baalbek'},
    {"imagePath": 'assets/jaaeta1.jpg', "title": 'Jeita Grotto'},
    {"imagePath": 'assets/batroun1.jpg', "title": 'Batroun'},
    {"imagePath": 'assets/jounieh1.jpg', "title": 'Jounieh'},
    {"imagePath": 'assets/byblos1.jpg', "title": 'Byblos'},
    {"imagePath": 'assets/anjar1.jpg', "title": 'Anjar'},
    {"imagePath": 'assets/bcharre1.jpg', "title": 'Bcharre'},
    {"imagePath": 'assets/saida1.jpg', "title": 'Saida'},
    {"imagePath": 'assets/tyre1.jpg', "title": 'Tyre'},
  ];

  List<Map<String, String>> filteredPlaces = [];

  @override
  void initState() {
    filteredPlaces = List.from(places);
    super.initState();
  }

  void _filterPlaces(String query) {
    setState(() {
      filteredPlaces = places
          .where((place) =>
          place["title"]!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

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
        // Positioned for Search Bar
        Positioned(
          top: 30.0,
          left: 20.0,
          right: 20.0,
          child: TextField(
            onChanged: _filterPlaces,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.search, color: Colors.white),
            ),
          ),
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
            children: [
              for (var place in filteredPlaces)
                buildImageCard(
                  imagePath: place['imagePath']!,
                  title: place['title']!,
                  onTap: () {
                    // Find the original place
                    var originalPlace = places.firstWhere(
                          (original) => original['title'] == place['title'],
                    );
                    // Open corresponding page
                    openCorrespondingPage(originalPlace);
                  },
                ),
            ],
          ),
        ),
      ],

    ),
  );

  }

void openCorrespondingPage(Map<String, String> place) {
  switch (place['title']) {
    case 'Baalbek':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BaalbekPage()),
      );
      break;
    case 'Jeita Grotto':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JeitaGrottoPage()),
      );
      break;
    case 'Batroun':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BatrounPage()),
      );
      break;
    case 'Jounieh':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JouniehPage()),
      );
      break;
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
