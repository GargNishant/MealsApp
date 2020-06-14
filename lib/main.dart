import 'package:flutter/material.dart';
import 'package:mealsapp/category/category_meals_route.dart';
import 'package:mealsapp/category/category_route.dart';
import 'package:mealsapp/meals/meal_detail_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        secondaryHeaderColor: Colors.orange,
        accentColor: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(color: Colors.grey),
            bodyText1: TextStyle(color: Colors.grey),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
          headline4: TextStyle(
            fontSize: 16,
            fontFamily: "RobotoCondensed",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: CategoryRoute(),
      routes: {
        CategoryMealsRoute.routeName: (ctx) => CategoryMealsRoute(),
        MealDetailRoute.routeName: (ctx) => MealDetailRoute(),
      },
    );
  }
}
