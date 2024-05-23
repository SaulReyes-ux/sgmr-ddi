//streams
//son flujos de informacion que puede estar emitiendo valores periodicamente
//una vez o nunca
//son como el flujo de agua
//en este puede cerrarce o abrirse
void main() {
  emitirNumeros().listen((value) {
    print('emit $value');
  });
}

Stream<int> emitirNumeros() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
