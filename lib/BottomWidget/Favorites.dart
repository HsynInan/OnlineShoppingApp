import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/FavoritesCard.dart';


class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
         automaticallyImplyLeading: false,
        title: Text(
          "Favorites",
          style: TextStyle(color: Colors.black),
        ),
        
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          FavoritesCard( productname:"MİLLA",productexplanation: "Women Black  Dress",price:49.99,image: "dress2.jpg",),
          FavoritesCard( productname:"House of Silk",productexplanation: "Short Pajama Set",price:99.99,image: "kazak.jpg",),
          FavoritesCard( productname:"XENA",productexplanation: " Women  White Pajama",price:70.99,image: "dress3.jpg",),
          FavoritesCard( productname:"Olalook",productexplanation: "Patterned Sweater Women Pajama",price:29.99,image: "dress9.jpg",),
          FavoritesCard( productname:"Hause of Silk",productexplanation: "Gary tight",price:9.99,image: "dress7.jpg",),
        ],
      )),
    );
  }
}
