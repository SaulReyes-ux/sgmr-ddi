void main() {
  //final Hero wolverine= Hero('wolverine', 'otro');
  final Hero superman = new Hero(name: 'superman', power: 'rayo laser');

  //print(wolverine);
  //print(wolverine.name);
  //print(wolverine.power);

  print(superman);
  print(superman.name);
  print(superman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'sin poder'});

  // Hero(String pName, String pPower)
  // : name=pName,
  // power= pPower;

  String toString() {
    return '$name - $power';
  }
}
