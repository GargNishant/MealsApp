import 'package:flutter/material.dart';
import 'package:mealsapp/bottom_bar_widget.dart';
import 'package:mealsapp/category/category_meals_route.dart';
import 'package:mealsapp/filters/filters_route.dart';
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
              bodyText2: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontFamily: "RobotoCondensed"),
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
      initialRoute: "/",
      routes: {
        "/": (ctx) => BottomNavigationWidget(),
        CategoryMealsRoute.routeName: (ctx) => CategoryMealsRoute(),
        MealDetailRoute.routeName: (ctx) => MealDetailRoute(),
        FiltersRoute.routeName: (ctx) => FiltersRoute(),
      },
    );
  }
}
