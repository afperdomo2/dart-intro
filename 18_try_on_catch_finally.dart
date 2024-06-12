void main() async {
  print("Inicio del programa");

  try {
    final valueGet = await httpGet("https://domain.org");
    print(valueGet);

    final valuePost = await httpPost("https://domain.org");
    print(valuePost);
  } on Exception catch (err) {
    print("👋 Tenemos una excepción. $err");
  } catch (err) {
    print('Error: $err');
  } finally {
    print("Proceso terminado");
  }

  print("Fin del programa");
}

Future<String> httpGet(String urml) async {
  await Future.delayed(const Duration(seconds: 1));
  return "Petición GET finalizada";
}

Future<String> httpPost(String urml) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception("Excepción generada en POST");
}
