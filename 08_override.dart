// En Dart, la anotación @override se utiliza para indicar que un método en una
// clase está sobrescribiendo un método de su clase padre. Cuando una clase
// hereda de otra clase, puede redefinir los métodos de la clase padre para
// adaptar su comportamiento a sus propias necesidades.
void main() {
  final wolverine = Hero(name: "Logan", power: "Regeneration");
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final dave = Hero(
    name: "Dave",
  );
  print(dave);
  print(dave.name);
  print(dave.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "No power"});

  //   Hero(this.name, this.power);

  //   Hero(String pName, String pPower)
  //       : name = pName,
  //         power = pPower;

  // Estoy sobreescribiendo la función toString que es herada cuando
  // se hace el print de la clase
  @override
  String toString() {
    return "Hola mundo";
  }
}
