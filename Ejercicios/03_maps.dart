//variables
void main() {
  final Map<String, Object> game = {
    'name': 'zelda',
    'starts': 5,
    'isRPG': false,
    'types': <String>['adventure', 'RPG'],
    'cover': {1: 'zelda/front.png', 2: 'zelda/back.png'}
  };

  print(game);
  print('Nombre:${game['name']}');
  print('Cover:${game['cover']}');
  print('cover Back:${game['cover'][1]}');
  print('cover front:${game['cover'][2]}');
}
