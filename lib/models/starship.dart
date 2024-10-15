// "name": "CR90 corvette",
// 	"model": "CR90 corvette",
// 	"manufacturer": "Corellian Engineering Corporation",
// 	"cost_in_credits": "3500000",
// 	"length": "150",
// 	"max_atmosphering_speed": "950",
// 	"crew": "30-165",
// 	"passengers": "600",
// 	"cargo_capacity": "3000000",
// 	"consumables": "1 year",
// 	"hyperdrive_rating": "2.0",
// 	"MGLT": "60",
// 	"starship_class": "corvette",
// 	"pilots": [],
// 	"films": [
// 		"https://swapi.dev/api/films/1/",
// 		"https://swapi.dev/api/films/3/",
// 		"https://swapi.dev/api/films/6/"
// 	],
// 	"created": "2014-12-10T14:20:33.369000Z",
// 	"edited": "2014-12-20T21:23:49.867000Z",
// 	"url": "https://swapi.dev/api/starships/2/"
class Starship {
  final String name;
  final String model;
  final String manufacturer;
  final String costInCredits;
  final String length;
  final String maxAtmospheringSpeed;
  final String crew;
  final String passengers;
  final String cargoCapacity;
  final String consumables;
  final String hyperdriveRating;
  final String MGLT;
  final String starshipClass;
  final List<String> pilots;
  final List<String> films;
  final DateTime created;
  final DateTime edited;
  final String url;

  Starship({
    required this.name,
    required this.model,
    required this.manufacturer,
    required this.costInCredits,
    required this.length,
    required this.maxAtmospheringSpeed,
    required this.crew,
    required this.passengers,
    required this.cargoCapacity,
    required this.consumables,
    required this.hyperdriveRating,
    required this.MGLT,
    required this.starshipClass,
    required this.pilots,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory Starship.fromJson(Map<String, dynamic> json) {
    return Starship(
      name: json['name'],
      model: json['model'],
      manufacturer: json['manufacturer'],
      costInCredits: json['cost_in_credits'],
      length: json['length'],
      maxAtmospheringSpeed: json['max_atmosphering_speed'],
      crew: json['crew'],
      passengers: json['passengers'],
      cargoCapacity: json['cargo_capacity'],
      consumables: json['consumables'],
      hyperdriveRating: json['hyperdrive_rating'],
      MGLT: json['MGLT'],
      starshipClass: json['starship_class'],
      pilots: List<String>.from(json['pilots']),
      films: List<String>.from(json['films']),
      created: DateTime.parse(json['created']),
      edited: DateTime.parse(json['edited']),
      url: json['url'],
    );
  }
}
