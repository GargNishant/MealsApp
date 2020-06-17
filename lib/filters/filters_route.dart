import 'package:flutter/material.dart';
import 'package:mealsapp/main_drawer.dart';

class FiltersRoute extends StatelessWidget {
  static const routeName = "/filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      drawer: MainDrawer(),
      body: Container(),
    );
  }
}
