import 'package:flutter/material.dart';

class CategoryMealsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: Center(
        child: Text("Meals in Category"),
      ),
    );
  }
}
