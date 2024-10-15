import 'package:flutter/material.dart';
import '../models/starship.dart';

class ShipDetailPage extends StatelessWidget {
  final Starship ship;

  ShipDetailPage({required this.ship});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ship.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${ship.name}', style: TextStyle(fontSize: 24)),
              Text('Model: ${ship.model}', style: TextStyle(fontSize: 20)),
              Text('Manufacturer: ${ship.manufacturer}', style: TextStyle(fontSize: 20)),
              Text('Cost in Credits: ${ship.costInCredits}', style: TextStyle(fontSize: 20)),
              Text('Length: ${ship.length}', style: TextStyle(fontSize: 20)),
              Text('Max Atmosphering Speed: ${ship.maxAtmospheringSpeed}', style: TextStyle(fontSize: 20)),
              Text('Crew: ${ship.crew}', style: TextStyle(fontSize: 20)),
              Text('Passengers: ${ship.passengers}', style: TextStyle(fontSize: 20)),
              Text('Cargo Capacity: ${ship.cargoCapacity}', style: TextStyle(fontSize: 20)),
              Text('Consumables: ${ship.consumables}', style: TextStyle(fontSize: 20)),
              Text('Hyperdrive Rating: ${ship.hyperdriveRating}', style: TextStyle(fontSize: 20)),
              Text('MGLT: ${ship.MGLT}', style: TextStyle(fontSize: 20)),
              Text('Starship Class: ${ship.starshipClass}', style: TextStyle(fontSize: 20)),
              Text('Pilots: ${ship.pilots.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Films: ${ship.films.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Created: ${ship.created}', style: TextStyle(fontSize: 20)),
              Text('Edited: ${ship.edited}', style: TextStyle(fontSize: 20)),
              Text('URL: ${ship.url}', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
