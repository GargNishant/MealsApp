import 'package:flutter/material.dart';
import 'package:mealsapp/category/category_route.dart';
import 'package:mealsapp/favourite/favourite_route.dart';
import 'package:mealsapp/main_drawer.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationWidget> {

  List<Map<String, Object>> _pages = [
    {'page': CategoryRoute(), 'title': "Daily Meals"},
    {'page': FavouriteRoute(), "title": "Favourites"}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() => _selectedPageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("Categories"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text("Favourites"),
            ),
          ]),
    );
  }
}