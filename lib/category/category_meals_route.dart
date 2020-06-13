import 'package:flutter/material.dart';
import 'package:mealsapp/category/category.dart';

class CategoryMealsRoute extends StatelessWidget {
  final Category _category;
  CategoryMealsRoute(this._category);

  @override
  Widget build(BuildContext context) {
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
