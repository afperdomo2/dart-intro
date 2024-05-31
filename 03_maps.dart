void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isAlieve": true,
    "abilities": <String>["impostor"],
    "sprites": <int, String>{1: "ditto/front.png", 2: "ditto/back.png"}
  };

  print(pokemon);

  // Imprimir el nombre
  print("Name: ${pokemon["name"]}");

  print("Sprites: ${pokemon["sprites"]}");

  print("Sprite - Front: ${pokemon["sprites"][1]}");
  print("Sprite - Back: ${pokemon["sprites"][2]}");
}
