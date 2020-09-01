import 'package:flutter/material.dart';
import 'package:shopapp/BottomWidget/Category.dart';
import 'package:shopapp/HomePage/homepage.dart';

import 'Bag.dart';
import 'Discount.dart';
import 'Favorites.dart';

class HomeNavigator extends StatefulWidget {
 

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  int _currentIndex = 0;
  //bunun içine kendi sayalarını koy
  List<Widget> _pages = [
    Homepage(),
    Category(),
    Favorites(),
    Bag(),
    Discount(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        selectedIconTheme: IconThemeData(color: Colors.green),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              title: Text(
                'Home',
              ),
              icon: Icon(
                Icons.home,
              )),
               BottomNavigationBarItem(
              title: Text(
                'Category',
              ),
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              title: Text(
                'Favorites',
              ),
              icon: Icon(
                Icons.favorite,
              )),
              BottomNavigationBarItem(
              title: Text(
                'Bag',
              ),
              icon: Icon(
                Icons.shopping_cart,
              )),
              BottomNavigationBarItem(
              title: Text(
                'Discount',
              ),
              icon: Icon(
                Icons.poll,
              )),
          
          
              
        ],
        onTap: (int val) {
          setState(() {
            _currentIndex = val;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
