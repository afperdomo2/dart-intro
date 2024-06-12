void main() {
  print("Inicio del programa");

  httpGet("https://domain.org").then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print("Fin del programa");
}

Future<String> httpGet(String urml) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw "Error en la petición";
    // return "Respuesta HTTP";
  });
}
