import 'package:flutter/material.dart';
import 'package:mealsapp/category/category.dart';
import 'package:mealsapp/dummy_data.dart';
import 'package:mealsapp/meals/meals_item_widget.dart';

class CategoryMealsRoute extends StatelessWidget {
  static const routeName = "/category-meals-route";

  @override
  Widget build(BuildContext context) {
    final Category _category =
        ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(_category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (ctx, index) => MealsItemWidget(categoryMeals[index]),
        itemCount: categoryMeals.length,
      )
    );
  }
}
