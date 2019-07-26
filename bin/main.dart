import 'package:dart_space_adventure/dart_space_adventure.dart' as dart_space_adventure;
import 'dart:io';

main(List<String> arguments) {
  print('Welcome to the Solar System!');
  print('There are 8 planets to explore.');
  
  print('What is your name?');

  String name = stdin.readLineSync();

  print('Nice to meet you, $name. My name is Eliza, I\'m an old friend of Alexa.');

  print(
    'Let\'s go on an adventure!\n'
    'Shall I randomly choose a planet for you to visit? (Y or N)'
  );

  String answer = stdin.readLineSync();

  print('Name the planet you would like to visit.');

  String planetName = stdin.readLineSync();

  print(
    'Traveling to $planetName...\n'
    'Arrived at $planetName. A very cold planet, furthest from the sun.'
  );
}
