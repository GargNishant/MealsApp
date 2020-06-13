import 'package:flutter/material.dart';
import 'package:mealsapp/category/category_meals_route.dart';
import 'package:mealsapp/category/category_route.dart';

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
            )),
      ),
      home: CategoryRoute(),
      initialRoute: "/",
      routes: {
        "/": (ctx) => CategoryRoute(),
        CategoryMealsRoute.routeName: (ctx) => CategoryMealsRoute(),
      },
    );
  }
}
