//variables
void main() {
  final number = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Lista original:$number');
  print('Lenght:${number.length}');
  print('Index 0:${number[0]}');
  print('First:${number.first}');
  print('Last index;${number[number.length - 1]}');
  print('Last;${number.last}');
  print('Desec:${number.reversed}');

  final reversedNumber = number.reversed;
  print('iterable:$reversedNumber');
  print('List: ${reversedNumber.toList()}');
  print('Set:${reversedNumber.toSet()}');

  //where
  //a la lista original se obtiene los numeros maores a 5

  final numbersGreaterThan5 = number.where((int number) {
    return number > 5;
  });

  print('Estos son los mayores a 5 ${numbersGreaterThan5}');
  print('> q 5 convert to list${numbersGreaterThan5.toList()}');
  print('> q 5 convert to set ${numbersGreaterThan5.toSet()}');
}
