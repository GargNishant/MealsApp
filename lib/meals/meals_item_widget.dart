import 'package:flutter/material.dart';
import 'package:mealsapp/customPaint/left_angled_end.dart';
import 'package:mealsapp/customPaint/vertical_badge.dart';
import 'package:mealsapp/meals/meal_detail_route.dart';
import 'package:mealsapp/meals/meals.dart';

class MealsItemWidget extends StatelessWidget {
  final Meal _meal;
  MealsItemWidget(this._meal);

  void _selectMeal(context){
    Navigator.of(context).pushNamed(MealDetailRoute.routeName,arguments: _meal,);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      splashColor: Theme.of(context).primaryColorDark,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Stack(children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Hero(
                tag: _meal.id,
                child: Image.network(
                  _meal.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  semanticLabel: _meal.title,
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                right: 0,
                child: CustomPaint(
                  painter: LeftAngledEnd(context),
                  child: Container(
                      constraints: BoxConstraints(maxWidth: 150),
                      padding: EdgeInsets.only(
                          left: 20, top: 10, right: 5, bottom: 10),
                      child: Text(
                        _meal.title,
                        style: Theme.of(context).textTheme.headline4,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )),
                )),
            Positioned(
              left: 15,
              top: 0,
              child: CustomPaint(
                painter: VerticalBadge(),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 3, right: 3, top: 5, bottom: 25),
                  child: Text(
                    "${_meal.duration} min",
                    style: Theme.of(context).textTheme.headline4,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
