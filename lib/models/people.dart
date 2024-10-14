class People {
  final String name;

  People({required this.name});

  factory People.fromJson(Map<String, dynamic> json) {
    return People(name: json['name']);
  }
}
