import 'package:flutter/material.dart';
import 'package:mealsapp/meals/meals.dart';

class MealDetailRoute extends StatelessWidget {
  static const String routeName = "/meal-detail-route";

  @override
  Widget build(BuildContext context) {
    final _selectedMeal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: _selectedMeal.id,
                child: Image.network(
                  _selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                  semanticLabel: _selectedMeal.title,
                ),
              ),
              title: Text(
                _selectedMeal.title,
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: List<int>.generate(90, (index) => index).map((index) => Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                alignment: Alignment.center,
                child: Text('$index item'),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
