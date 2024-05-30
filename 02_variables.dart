void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;

  // Ambas listas hacen lo mismo
  final abilities = <String>['impostor', 'mimetic'];
  final List<String> abilities2 = ['mimetic', 'impostor'];

  // dynamic == null
  dynamic errorMessage = "No se pudo atacar";
  errorMessage = true;
  errorMessage = ["Error", "No se pudo atacar"];
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $abilities2
  $errorMessage
  """);
}
