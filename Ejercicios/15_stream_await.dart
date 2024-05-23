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

Stream<int> emitirNumeros() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 2));

    yield i;
  }
}
