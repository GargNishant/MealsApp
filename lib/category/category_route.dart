import 'package:flutter/material.dart';
import 'package:mealsapp/category/category_widget.dart';
import 'package:mealsapp/dummy_data.dart';

class CategoryRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Meals"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 16 / 9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (context, index) =>
            CategoryWidget(DUMMY_CATEGORIES[index]),
      ),
    );
  }
}
