import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/GeneralProductCard.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 8,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: !isSearching
                    ? Text(
                        "Category",
                        style: TextStyle(color: Colors.black),
                      )
                    : Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              hintText: "Search Someting",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                backgroundColor: Colors.white12,
                actions: <Widget>[
                  isSearching
                      ? IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              this.isSearching = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              this.isSearching = true;
                            });
                          })
                ],
                bottom: TabBar(isScrollable: true, tabs: <Widget>[
                  Tab(
                      child: Text(
                    "For You",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Women",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Man",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Home & Life",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Kids",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Spor",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Shoes",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "Cosmetics",
                    style: TextStyle(color: Colors.black),
                  )),
                ]),
              ),
              body: TabBarView(children: <Widget>[
                SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                              productname: "MİLLA",
                              productexplanation: "Black Women Dress",
                              price: 49.99,
                              productimage: "dress4.jpg",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                              productname: "Olalook",
                              productexplanation: "Patterned Sweater",
                              price: 29.99,
                              productimage: "dress2.jpg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "Hause of Silk",
                          productexplanation: "Gary tight",
                          price: 9.99,
                          productimage: "dress3.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "XENA",
                          productexplanation: "White Pajama",
                          price: 70.99,
                          productimage: "kazak.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "NIKE",
                          productexplanation: "White Shoes",
                          price: 99.99,
                          productimage: "shoe.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "Lumberjack",
                          productexplanation: "Modern Shoes",
                          price: 99.99,
                          productimage: "shoe2.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "House of Silk",
                          productexplanation: "Short Pajama Set",
                          price: 99.99,
                          productimage: "dress8.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "H & D",
                          productexplanation: "Hot Styles",
                          price: 99.99,
                          productimage: "dress9.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                     Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                              productname: "MİLLA",
                              productexplanation: "Black Women Dress",
                              price: 49.99,
                              productimage: "dress.jpg",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                              productname: "Olalook",
                              productexplanation: "Patterned Sweater",
                              price: 29.99,
                              productimage: "dress2.jpg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "Hause of Silk",
                          productexplanation: "Gary tight",
                          price: 9.99,
                          productimage: "dress3.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "XENA",
                          productexplanation: "White Pajama",
                          price: 70.99,
                          productimage: "kazak.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "COLIN'S",
                          productexplanation: "Special Red Dress",
                          price: 99.99,
                          productimage: "dress6.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "LACOSTE",
                          productexplanation: " Women Night Dress",
                          price: 99.99,
                          productimage: "dress7.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "House of Silk",
                          productexplanation: "Short Pajama Set",
                          price: 99.99,
                          productimage: "dress8.jpg",
                        ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GeneralProductCard(
                          productname: "H & D",
                          productexplanation: "Hot Styles",
                          price: 99.99,
                          productimage: "dress9.jpg",
                        ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                SingleChildScrollView(
                  child: Text("Man"),
                ),
                SingleChildScrollView(
                  child: Text("Home&Life"),
                ),
                SingleChildScrollView(
                  child: Text("Kids"),
                ),
                SingleChildScrollView(
                  child: Text("Spor"),
                ),
                SingleChildScrollView(
                  child: Text("Shoes"),
                ),
                SingleChildScrollView(
                  child: Text("Cosmetic"),
                ),
              ]),
            )));
  }
}
