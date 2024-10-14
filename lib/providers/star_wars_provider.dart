import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/people.dart';
import '../models/starship.dart';
import '../models/planet.dart';

class StarWarsProvider with ChangeNotifier {
  List<Starship> _ships = [];
  List<Planet> _planets = [];
  List<People> _people = [];
  bool _isLoading = false;

  List<Starship> get ships => _ships;
  List<Planet> get planets => _planets;
  List<People> get people => _people;
  bool get isLoading => _isLoading;

  Future<void> fetchShips() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://swapi.dev/api/starships/?page=1'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['results'];
      _ships = jsonData.take(10).map((json) => Starship.fromJson(json)).toList();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchPlanets() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://swapi.dev/api/planets/?page=1'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['results'];
      _planets = jsonData.take(10).map((json) => Planet.fromJson(json)).toList();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchPeople() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://swapi.dev/api/people/?page=1'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['results'];
      _people = jsonData.take(10).map((json) => People.fromJson(json)).toList();
    }
    _isLoading = false;
    notifyListeners();
  }
}
