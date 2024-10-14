class Starship {
  final String name;
  final String model;

  Starship({required this.name, required this.model});

  factory Starship.fromJson(Map<String, dynamic> json) {
    return Starship(
      name: json['name'],
      model: json['model'],
    );
  }
}
