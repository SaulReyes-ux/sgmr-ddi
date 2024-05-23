//Future
//Son un acuerdo que en el futuro tendras un valor para ser usado
void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('http://');
    print(value);
  } on Exception {
    print('error general:');
  } catch (err) {
    print('error general: $err');
  } finally {
    print('Entra al bloque finally');
  }

  print('Final del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  throw Exception('No hay parametros en la URL');
}
