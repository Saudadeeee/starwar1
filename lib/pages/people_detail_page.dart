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
            // Thêm các thuộc tính khác của nhân vật nếu cần
          ],
        ),
      ),
    );
  }
}
