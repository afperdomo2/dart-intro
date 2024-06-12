void main() {
  final flipper = Delfin();
  flipper.nadar();

  final lucas = Pato();
  lucas.nadar();
  lucas.caminar();
  lucas.volar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print("Estoy volando");
}

mixin Caminante {
  void caminar() => print("Estoy caminando");
}

mixin Nadador {
  void nadar() => print("Estoy nadando");
}

// Mamíferos
class Delfin extends Mamifero with Nadador {}

class Murcielado extends Mamifero with Volador, Nadador {}

class Gato extends Mamifero with Caminante {}

// Aves
class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Nadador, Caminante {}

// Peces
class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
