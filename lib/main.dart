import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Affirmation',
      debugShowCheckedModeBanner: false,
      home: const AffirmationScreen(),
    );
  }
}

// Model class
class Affirmation {
  final String text;
  final String image;

  const Affirmation({
    required this.text,
    required this.image,
  });
}

const List<Affirmation> affirmations = [
  Affirmation(
    text: 'I can do this all day.',
    image: 'assets/cap_A.jpg',
  ),
  Affirmation(
    text: 'You\'re going to make a difference.',
    image: 'assets/bat.jpg',
  ),
  Affirmation(
    text: 'Life doesn\'t givce us pirpopse, we give life purpose.', 
    image: 'assets/The_Flash.jpg'
  ),
  Affirmation(
    text: 'With great power comes great responsibility' , 
    image: 'assets/spider_man.jpg'

  ),
  

  
];

class AffirmationScreen extends StatelessWidget {
  const AffirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Affirmations'),
      ),
      body: ListView.builder(
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          final affirmation = affirmations[index];

          return Card(
            margin: const EdgeInsets.all(15), // space between cards
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // where the text starts in the card
              children: [
                Image.asset(
                  affirmation.image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(10), // space for the text
                  child: Text(
                    affirmation.text,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}