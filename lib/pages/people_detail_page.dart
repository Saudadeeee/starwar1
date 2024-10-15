import 'package:flutter/material.dart';
import '../models/people.dart';

class PeopleDetailPage extends StatelessWidget {
  final People person;

  PeopleDetailPage({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Character Name: ${person.name}', style: TextStyle(fontSize: 24)),
            Text('Height: ${person.height}', style: TextStyle(fontSize: 20)),
            Text('Mass: ${person.mass}', style: TextStyle(fontSize: 20)),
            Text('Hair Color: ${person.hairColor}', style: TextStyle(fontSize: 20)),
            Text('Eye Color: ${person.eyeColor}', style: TextStyle(fontSize: 20)),
            Text('Birth Year: ${person.birthYear}', style: TextStyle(fontSize: 20)),
            Text('Home World: ${person.homeworld}', style: TextStyle(fontSize: 20)),

          ],
        ),
      ),
    );
  }
}
