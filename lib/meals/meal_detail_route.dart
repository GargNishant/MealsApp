import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mealsapp/meals/bullet_point_widget.dart';
import 'package:mealsapp/meals/ingredient_list_widget.dart';
import 'package:mealsapp/meals/meals.dart';

class MealDetailRoute extends StatelessWidget {
  static const String routeName = "/meal-detail-route";

  @override
  Widget build(BuildContext context) {
    final _selectedMeal = ModalRoute.of(context).settings.arguments as Meal;
    final _theme = Theme.of(context);
    final _textTheme = _theme.textTheme;

    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
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
                )),
            title: Text(
              _selectedMeal.title,
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(text: "Difficulty: ", style: _textTheme.bodyText2),
                    TextSpan(
                        text: _selectedMeal.complexityText,
                        style: TextStyle(
                          color: _selectedMeal.complexityText == "Simple"
                              ? _theme.primaryColorDark
                              : (_selectedMeal.complexityText == "Challenging"
                                  ? Colors.orange
                                  : Colors.red),
                          fontSize: _textTheme.bodyText2.fontSize,
                          fontFamily: _textTheme.headline6.fontFamily,
                        ))
                  ]),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ingredients",
                style: _textTheme.headline6,
              ),
              IngredientListWidget(_selectedMeal.ingredients),
              SizedBox(height: 10),
              Text(
                "Directions",
                style: _textTheme.headline6,
              ),
              SizedBox(height: 10),
              Column(
                children: _selectedMeal.steps.map((step) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: BulletPointWidget(step),
                  );
                }).toList(),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
