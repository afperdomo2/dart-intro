void main() {
  print(greetEveryone());

  print(hello());

  print('Suma: ${addTwoNumbers(10, 20)}');

  print('Suma: ${addTwoNumbers2(10, 20)}');

  print('Fullname: ${getFullName("Pedro", "Pérez")}');

  print('Fullname: ${getFullName("María")}');

  print('Fullname2: ${getFullName2("Pedro", "Pérez")}');

  print('Fullname2: ${getFullName2("María")}');
}

// Tipa el return
String greetEveryone() {
  return "Hello everyone";
}

// Función de flecha
String hello() => "Hello world";

// Tipando argumentos
int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

// Creando argumentos opcionales
String getFullName(String name, [String? firstName]) {
  // firstName = firstName ?? "";

  // Esta es la forma resumida de la línea de arriba
  firstName ??= "";

  return '${name} ${firstName}';
}

// Argumentos opcionales con valor por defecto
String getFullName2(String name, [String firstName = ""]) {
  return '${name} ${firstName}';
}
