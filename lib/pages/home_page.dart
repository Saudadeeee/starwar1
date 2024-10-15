import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_wars_provider.dart';
import 'ships_page.dart';
import 'planets_page.dart';
import 'people_page.dart';

import 'package:flutter/material.dart';
import 'ships_page.dart';
import 'planets_page.dart';
import 'people_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Image.network(
                'https://pyxis.nymag.com/v1/imgs/ad7/b0c/45991227b9e02cf0ef2a12405537944958-star-wars-tv-ranked.rhorizontal.w700.jpg',
              ),
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

