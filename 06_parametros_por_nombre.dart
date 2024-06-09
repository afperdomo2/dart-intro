void main() {
  // El primer parámetro es obligatorio
  // El segundo es opcional
  String greetPerson({required String name, String message = "Hola"}) {
    return '${message} ${name}';
  }

  // Enviando un parámetro con nombre
  print(greetPerson(name: "Felipe", message: "Saludos"));
}
