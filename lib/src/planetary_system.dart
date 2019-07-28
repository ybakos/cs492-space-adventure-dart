import 'dart:math';
import 'planet.dart';

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

  Planet planetWithName(String name) {
    return planets.firstWhere(
      (planet) {
        return planet.name == name;
      },
      orElse: () => Planet.nullPlanet()
    );
  }

}
