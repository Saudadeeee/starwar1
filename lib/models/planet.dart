// "name": "Tatooine",
// 	"rotation_period": "23",
// 	"orbital_period": "304",
// 	"diameter": "10465",
// 	"climate": "arid",
// 	"gravity": "1 standard",
// 	"terrain": "desert",
// 	"surface_water": "1",
// 	"population": "200000",
// 	"residents": [
// 		"https://swapi.dev/api/people/1/",
// 		"https://swapi.dev/api/people/2/",
// 		"https://swapi.dev/api/people/4/",
// 		"https://swapi.dev/api/people/6/",
// 		"https://swapi.dev/api/people/7/",
// 		"https://swapi.dev/api/people/8/",
// 		"https://swapi.dev/api/people/9/",
// 		"https://swapi.dev/api/people/11/",
// 		"https://swapi.dev/api/people/43/",
// 		"https://swapi.dev/api/people/62/"
// 	],
// 	"films": [
// 		"https://swapi.dev/api/films/1/",
// 		"https://swapi.dev/api/films/3/",
// 		"https://swapi.dev/api/films/4/",
// 		"https://swapi.dev/api/films/5/",
// 		"https://swapi.dev/api/films/6/"
// 	],
// 	"created": "2014-12-09T13:50:49.641000Z",
// 	"edited": "2014-12-20T20:58:18.411000Z",
// 	"url": "https://swapi.dev/api/planets/1/"

class Planet {
  final String name;
  final String rotationPeriod;
  final String orbitalPeriod;
  final String diameter;
  final String climate;
  final String gravity;
  final String terrain;
  final String surfaceWater;
  final String population;
  final List<String> residents;
  final List<String> films;
  final DateTime created;
  final DateTime edited;
  final String url;

  Planet({
    required this.name,
    required this.rotationPeriod,
    required this.orbitalPeriod,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.surfaceWater,
    required this.population,
    required this.residents,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['name'],
      rotationPeriod: json['rotation_period'],
      orbitalPeriod: json['orbital_period'],
      diameter: json['diameter'],
      climate: json['climate'],
      gravity: json['gravity'],
      terrain: json['terrain'],
      surfaceWater: json['surface_water'],
      population: json['population'],
      residents: List<String>.from(json['residents']),
      films: List<String>.from(json['films']),
      created: DateTime.parse(json['created']),
      edited: DateTime.parse(json['edited']),
      url: json['url'],
    );
  }
}
