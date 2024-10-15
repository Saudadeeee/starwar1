import 'package:flutter/material.dart';
import '../models/planet.dart';

class PlanetDetailPage extends StatelessWidget {
  final Planet planet;

  PlanetDetailPage({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Planet Name: ${planet.name}', style: TextStyle(fontSize: 24)),
              Text('Rotation Period: ${planet.rotationPeriod}', style: TextStyle(fontSize: 20)),
              Text('Orbital Period: ${planet.orbitalPeriod}', style: TextStyle(fontSize: 20)),
              Text('Diameter: ${planet.diameter}', style: TextStyle(fontSize: 20)),
              Text('Climate: ${planet.climate}', style: TextStyle(fontSize: 20)),
              Text('Gravity: ${planet.gravity}', style: TextStyle(fontSize: 20)),
              Text('Terrain: ${planet.terrain}', style: TextStyle(fontSize: 20)),
              Text('Surface Water: ${planet.surfaceWater}', style: TextStyle(fontSize: 20)),
              Text('Population: ${planet.population}', style: TextStyle(fontSize: 20)),
              Text('Residents: ${planet.residents.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Films: ${planet.films.join(', ')}', style: TextStyle(fontSize: 20)),
              Text('Created: ${planet.created}', style: TextStyle(fontSize: 20)),
              Text('Edited: ${planet.edited}', style: TextStyle(fontSize: 20)),
              Text('URL: ${planet.url}', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}