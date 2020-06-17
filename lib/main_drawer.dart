import 'package:flutter/material.dart';
import 'package:mealsapp/filters/filters_route.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 20),
              height: 120,
              width: double.infinity,
              color: Theme.of(context).primaryColorDark,
              alignment: Alignment.centerLeft,
              child: Text(
                "Cooking up",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                  fontFamily: Theme.of(context).textTheme.headline4.fontFamily,
                  fontWeight: Theme.of(context).textTheme.headline4.fontWeight,
                  color: Theme.of(context).textTheme.headline4.color,
                ),
              )),
          SizedBox(height: 20),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamedAndRemoveUntil("/",(Route<dynamic> route) => false);
            },
            leading: Icon(Icons.restaurant),
            title: Text("Meals"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(FiltersRoute.routeName);
            },
            leading: Icon(Icons.settings),
            title: Text("Filters"),
          ),
        ],
      ),
    );
  }
}
