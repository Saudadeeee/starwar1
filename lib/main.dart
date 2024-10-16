import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/star_wars_provider.dart';
import 'pages/home_page.dart';




void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => StarWarsProvider(),
      child: StarWarsApp(),
    ),
  );
}

class StarWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
