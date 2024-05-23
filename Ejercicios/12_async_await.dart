//Future
//Son un acuerdo que en el futuro tendras un valor para ser usado
void main() async {
  print('Inicio del programa');
  final value = await httpGet('http://');
  print(value);
  print('Final del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  return 'respuesta de la peticion HTTP';
}
