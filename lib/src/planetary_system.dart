import 'planet.dart';
import 'dart:math';

class PlanetarySystem {

  final String name;
  final List<Planet> planets;
  final _random = Random();

  PlanetarySystem({this.name = "Unnamed System", this.planets = const[]});

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;
  
  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  } 

}
