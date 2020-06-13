import 'package:flutter/material.dart';
import 'package:mealsapp/category/category.dart';

class CategoryMealsRoute extends StatelessWidget {
  static const routeName = "/category-meals-route";

  @override
  Widget build(BuildContext context) {
    final Category _category =
        ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: Center(
        child: Text("Meals in Category"),
      ),
    );
  }
}
