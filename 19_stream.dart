void main() {
  // Los Stream son un flujo de datos
  emitNumbers().listen((value) {
    print('Stream listen: $value');
  });

  // Para cerrar el Stream se usa .close()
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5); // take: Ejecuta 5 emisiones y se cierra el Stream
}
