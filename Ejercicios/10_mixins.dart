void main() {
  final delfin = Delfin();
  delfin.nadar();

  final pato = Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
}

abstract class Animal {}

abstract class Mmifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando');
}
mixin Caminante {
  void caminar() => print('estoy caminando');
}
mixin Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mmifero with Nadador {}

class Mulcierlago extends Mmifero with Volador, Caminante {}

class Gato extends Mmifero with Volador, Caminante {}

class Paloma extends Ave with Nadador {}

class Pato extends Ave with Caminante, Nadador, Volador {}

class Tiburos extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Nadador {}
