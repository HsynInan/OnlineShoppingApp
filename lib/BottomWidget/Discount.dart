import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/SalesCard.dart';

class Discount extends StatelessWidget {
  const Discount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            "Discount",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             Row(
                children: <Widget>[
                  Expanded(
                    child: SalesWidget(
                      productname: "COLIN'S",
                      productexplanation: " Women Black Dress",
                      price: 49.99,
                      beforeprice: 69.99,
                      discountcount: 20,
                      productimage: "dress.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "DEFACTO",
                      productexplanation: "Patterned Sweater",
                      price: 29.99,
                      beforeprice: 49.99,
                      discountcount: 15,
                      productimage: "dress2.jpg",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SalesWidget(
                      productname: "MİLLA",
                      productexplanation: "Black Women Dress",
                      price: 49.99,
                      beforeprice: 69.99,
                      discountcount: 20,
                      productimage: "dress3.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "Olalook",
                      productexplanation: "Patterned Sweater",
                      price: 29.99,
                      beforeprice: 49.99,
                      discountcount: 15,
                      productimage: "kazak.jpg",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SalesWidget(
                      productname: "NIKE",
                      productexplanation: "White Shoe",
                      price: 49.99,
                      beforeprice: 69.99,
                      discountcount: 20,
                      productimage: "shoe2.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "ADIDAS",
                      productexplanation: "Brown Shoe for Man",
                      price: 29.99,
                      beforeprice: 49.99,
                      discountcount: 15,
                      productimage: "shoe.jpg",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SalesWidget(
                      productname: "ASUS",
                      productexplanation: "Intelcore computer",
                      price: 499.99,
                      beforeprice: 699.99,
                      discountcount: 20,
                      productimage: "computer.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "LENOVO",
                      productexplanation: "Patterned Sweater",
                      price: 299.99,
                      beforeprice: 399.99,
                      discountcount: 15,
                      productimage: "computer2.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
