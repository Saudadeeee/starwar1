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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Character Name: ${person.name}', style: TextStyle(fontSize: 24)),
              Text('Height: ${person.height}', style: TextStyle(fontSize: 20)),
              Text('Mass: ${person.mass}', style: TextStyle(fontSize: 20)),
              Text('Hair Color: ${person.hairColor}', style: TextStyle(fontSize: 20)),
              Text('Skin Color: ${person.skinColor}', style: TextStyle(fontSize: 20)),
              Text('Eye Color: ${person.eyeColor}', style: TextStyle(fontSize: 20)),
              Text('Birth Year: ${person.birthYear}', style: TextStyle(fontSize: 20)),
              Text('Gender: ${person.gender}', style: TextStyle(fontSize: 20)),
              Text('Home World: ${person.homeworld}', style: TextStyle(fontSize: 20)),
              Text('Films: ${person.films.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Species: ${person.species.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Vehicles: ${person.vehicles.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Starships: ${person.starships.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Created: ${person.created}', style: TextStyle(fontSize: 20)),
              Text('Edited: ${person.edited}', style: TextStyle(fontSize: 20)),
              Text('URL: ${person.url}', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}