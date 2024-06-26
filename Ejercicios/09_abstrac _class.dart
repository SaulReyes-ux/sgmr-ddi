//Una calse abstracta no se puede instancias como si misma
//es un molde para crear otro molde
//se puede crear funciones sin implementacion
//
void main() {
  final plantaViento = PlantaAire(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 100);

  print('viento: ${cargarBateria(plantaViento)}');
  print('nuclear: ${cargarBateria(plantaNuclear)}');
}

double cargarBateria(PlantaEnergia planta) {
  if (planta.cantidadEnergia < 10) {
    throw Exception('sin energia suficiente');
  }
  return planta.cantidadEnergia - 10;
}

enum TipoPlanta { viento, agua, nuclear }

abstract class PlantaEnergia {
  double cantidadEnergia;
  final TipoPlanta tipo;

  PlantaEnergia({required this.cantidadEnergia, required this.tipo});

  void consumirEnergia(double cantidad);
}

//extends or implements
//Extends: extender o heredar de una clase
class PlantaAire extends PlantaEnergia {
  PlantaAire({required double energiaInicial})
      : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);

  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}

class PlantaNuclear implements PlantaEnergia {
  @override
  double cantidadEnergia;
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  PlantaNuclear({required double this.cantidadEnergia});

  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}
