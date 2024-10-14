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
        child: Column(
          children: [
            Text('Name: ${ship.name}', style: TextStyle(fontSize: 24)),
            Text('Model: ${ship.model}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
