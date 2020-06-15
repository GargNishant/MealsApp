
import 'package:flutter/material.dart';

class IngredientListWidget extends StatelessWidget{
  final _ingredients;


  IngredientListWidget(this._ingredients);

  @override
  Widget build(BuildContext context) {
    final _scrollController = ScrollController();
    final _theme = Theme.of(context);
    final _textTheme = _theme.textTheme;

    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: _theme.primaryColorDark),
          ),
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView.builder(
                controller: _scrollController,
                padding: EdgeInsets.all(0),
                itemCount: _ingredients.length,
                itemBuilder: (ctx, index) {
                  return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                              BorderSide(color: Colors.green))),
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(
                        "${_ingredients[index]}",
                        style: TextStyle(
                          fontSize: _textTheme.bodyText2.fontSize,
                          fontFamily: _textTheme.bodyText2.fontFamily,
                          color: Colors.black87,
                        ),
                      ));
                }),
          )),
    );
  }

}