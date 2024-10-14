class Planet {
  final String name;

  Planet({required this.name});

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(name: json['name']);
  }
}
