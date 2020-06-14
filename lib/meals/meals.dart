
import 'package:flutter/cupertino.dart';

class Meal{
  final String id;
  final String title;
  final int duration;
  final Complexity complexity;
  final String imageUrl;
  final Affordability affordability;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({@required this.id,@required this.title,@required this.duration, this.complexity = Complexity.Simple, @required this.imageUrl,
      this.affordability = Affordability.Affordable,@required this.categories,@required this.ingredients,@required this.steps,
      this.isGlutenFree = false, this.isLactoseFree = false, this.isVegan = false, this.isVegetarian = false});

  String get complexityText {
    switch(complexity){
      case Complexity.Simple:
        return "Simple";
      case Complexity.Challenging:
        return "Challenging";
      case Complexity.Hard:
        return "Hard";
      default:
        return "Unknown";
    }
  }
}


enum Complexity{
  Simple,
  Challenging,
  Hard
}

enum Affordability{
  Affordable,
  Pricey,
  Luxurious
}