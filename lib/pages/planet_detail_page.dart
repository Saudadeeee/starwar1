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
        child: Column(
          children: [
            Text('Planet Name: ${planet.name}', style: TextStyle(fontSize: 24)),
            // Thêm các thuộc tính khác của hành tinh nếu cần
          ],
        ),
      ),
    );
  }
}
