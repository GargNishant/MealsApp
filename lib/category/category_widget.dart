import 'package:flutter/material.dart';

import 'category.dart';

class CategoryWidget extends StatelessWidget {
  final Category _category;

  CategoryWidget(this._category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColorDark,
      borderRadius: BorderRadius.circular(10),
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                _category.backgroundColor,
                _category.backgroundColor.withOpacity(0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(top: 15, left: 10),
        child: Text(
          _category.title,
          style: TextStyle(
            color: (ThemeData.estimateBrightnessForColor(
                        _category.backgroundColor) ==
                    Brightness.dark
                ? Colors.white
                : Colors.black54),
            fontFamily: Theme.of(context).textTheme.headline6.fontFamily,
            fontWeight: Theme.of(context).textTheme.headline6.fontWeight,
            fontSize: Theme.of(context).textTheme.headline6.fontSize,
          ),
        ),
      ),
    );
  }
}
