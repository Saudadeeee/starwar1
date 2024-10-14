import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_wars_provider.dart';
import 'ships_page.dart';
import 'planets_page.dart';
import 'people_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Star Wars'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'SHIPS'),
              Tab(text: 'PLANETS'),
              Tab(text: 'PEOPLE'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network('https://example.com/your_image.jpg'), // Thay thế bằng URL hình ảnh của bạn
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ShipsPage(),
                  PlanetsPage(),
                  PeoplePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
