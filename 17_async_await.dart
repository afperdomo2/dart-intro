void main() async {
  print("Inicio del programa");

  try {
    final valueGet = await httpGet("https://domain.org");
    print(valueGet);

    final valuePost = await httpPost("https://domain.org");
    print(valuePost);
  } catch (err) {
    print('Error: $err');
  }

  print("Fin del programa");
}

Future<String> httpGet(String urml) async {
  await Future.delayed(const Duration(seconds: 1));
  return "Petición GET finalizada";
}

Future<String> httpPost(String urml) async {
  await Future.delayed(const Duration(seconds: 1));
  throw "Error al hacer la petición POST";
}
