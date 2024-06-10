void main() {
  final Map<String, dynamic> rawJson = {
    "name": "Logan",
    "power": "Regeneration",
    "isAlive": true
  };

  final ironman = Hero(name: "IronMan", power: "Cash", isAlive: true);
  print(ironman);

  final wolverine_old = Hero(
      name: rawJson["name"],
      power: rawJson["power"],
      isAlive: rawJson["isAlive"]);
  print(wolverine_old);

  // Usando el constructor personalizado
  final wolverine = Hero.fromJson(rawJson);
  print(wolverine);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Constructor normal
  Hero({required this.name, required this.power, required this.isAlive});

  // Se crea un contructor personalizado para objetos json
  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "No name found",
        power = json["power"] ?? "No power found",
        isAlive = json["isAlive"] ?? "No isAlive found";

  @override
  String toString() {
    return 'Hero: $name, Power: $power, ${isAlive ? 'Is Alive' : 'Is Dead'}';
  }
}
