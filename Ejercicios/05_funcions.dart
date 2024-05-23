void main() {
  print(saludar());
  print(greetEver());
  print(agragarNumeros(5, 5));
  print(agregarDosNumerosOpcionale(2, 3));
  print(greetPerson(message: 'Hola', name: 'Saul Reyes'));
}

String saludar() {
  return "Hola a todos";
}

// Lambda
String greetEver() => "Hello Everynone";

int agragarNumeros(int a, int b) {
  return a + b;
}

//convertir la funcion a lambda, se debe llamar "addTwoNumbers"

//varibales opcionales
int agregarDosNumerosOpcionale(int a, [int? b]) {
  //b=b ?? 0;
  b ??= 0;
  return a + b;
}

//variable por referencia
String greetPerson({required String name, String? message = "Hola"}) {
  return '$message, $name';
}
