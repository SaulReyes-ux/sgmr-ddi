//Future
//Son un acuerdo que en el futuro tendras un valor para ser usado
void main() {
  print('Inicio del programa');
  httpGet('http://').then((value) {});
  print('Final del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'Respuesta de la peticion HTTP';
  });
}
