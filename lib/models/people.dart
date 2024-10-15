// {
// 	"name": "Luke Skywalker",
// 	"height": "172",
// 	"mass": "77",
// 	"hair_color": "blond",
// 	"skin_color": "fair",
// 	"eye_color": "blue",
// 	"birth_year": "19BBY",
// 	"gender": "male",
// 	"homeworld": "https://swapi.dev/api/planets/1/",
// 	"films": [
// 		"https://swapi.dev/api/films/1/",
// 		"https://swapi.dev/api/films/2/",
// 		"https://swapi.dev/api/films/3/",
// 		"https://swapi.dev/api/films/6/"
// 	],
// 	"species": [],
// 	"vehicles": [
// 		"https://swapi.dev/api/vehicles/14/",
// 		"https://swapi.dev/api/vehicles/30/"
// 	],
// 	"starships": [
// 		"https://swapi.dev/api/starships/12/",
// 		"https://swapi.dev/api/starships/22/"
// 	],
// 	"created": "2014-12-09T13:50:51.644000Z",
// 	"edited": "2014-12-20T21:17:56.891000Z",
// 	"url": "https://swapi.dev/api/people/1/"

class People {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final DateTime created;
  final DateTime edited;
  final String url;

  People({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      hairColor: json['hair_color'],
      skinColor: json['skin_color'], // Corrected syntax error
      eyeColor: json['eye_color'],
      birthYear: json['birth_year'],
      gender: json['gender'],
      homeworld: json['homeworld'],
      films: List<String>.from(json['films']),
      species: List<String>.from(json['species']),
      vehicles: List<String>.from(json['vehicles']),
      starships: List<String>.from(json['starships']),
      created: DateTime.parse(json['created']),
      edited: DateTime.parse(json['edited']),
      url: json['url'],
    );
  }
}