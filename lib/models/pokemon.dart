class Pokemon {
  int id = 0;
  String name = "";
  String url = "";

  Pokemon({
    required this.name,
    required this.id,
    required this.url,
  });


  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }
}