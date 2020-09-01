import 'package:flutter/material.dart';
import 'package:shopapp/UserSettingWidget/Accountsettingpage.dart';

import 'package:shopapp/Widgets/GeneralProductCard.dart';
import 'package:shopapp/Widgets/SalesCard.dart';
import 'package:shopapp/Widgets/SellersmallCard.dart';

import 'notificationspage.dart';

class Homepage extends StatefulWidget {
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Online Shopping",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white12,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.notifications_none),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                }),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.circular(17),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/avatar.jpg"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 14.0, left: 14.0),
                //search
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // labelText: "Search",
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white)),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        margin: EdgeInsets.only(right: 8),
                        width: 30,
                        child: Center(
                          child: Icon(
                            Icons.search,
                            size: 26,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Row(
                    children: <Widget>[
                      SellerSmallCard("adidas.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("mavi.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("nike.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("lacoste.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("lcw.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("lumberjack.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("colins.png"),
                      SizedBox(
                        width: 5,
                      ),
                      SellerSmallCard("kigili.png"),
                      SizedBox(
                        width: 5,
                      ),
                      // add your categorıes
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // text
              Padding(
                padding: const EdgeInsets.only(
                    left: 14, top: 5, right: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "For You",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.orange, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              //ForYou
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: <Widget>[
                        GeneralProductCard(
                          productname: "MİLLA",
                          productexplanation: "Black Women Dress",
                          price: 49.99,
                          productimage: "dress.jpg",
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "House of Silk",
                          productexplanation: "Short Pajama Set",
                          price: 99.99,
                           productimage: "dress2.jpg"
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "XENA",
                          productexplanation: "White  Pajama",
                          price: 70.99,
                           productimage: "dress4.jpg"
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "Olalook",
                          productexplanation: "Patterned Sweater",
                          price: 29.99,
                           productimage: "dress3.jpg"
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "Hause of Silk",
                          productexplanation: "Gary tight",
                          price: 9.99,
                           productimage: "kazak.jpg"
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // text
              Padding(
                padding: const EdgeInsets.only(
                    left: 14, top: 5, right: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Sales",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.orange, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SalesWidget(
                      productname: "MİLLA",
                      productexplanation: "Black Women Dress",
                      price: 49.99,
                      beforeprice: 69.99,
                      discountcount: 20,
                      productimage: "dress.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "Olalook",
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
                      productname: "DEFACTO",
                      productexplanation: "Women Trend Dress",
                      price: 49.99,
                      beforeprice: 69.99,
                      discountcount: 20,
                      productimage: "dress3.jpg",
                    ),
                  ),
                  Expanded(
                    child: SalesWidget(
                      productname: "HUMMEL",
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
              //Popular Product
              Padding(
                padding: const EdgeInsets.only(
                    left: 14, top: 5, right: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Popular Product",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.orange, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              //Popular Product
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: <Widget>[
                        GeneralProductCard(
                          productname: "Hause of Silk",
                          productexplanation: "Gary tight",
                          price: 9.99,
                          productimage: "dress4.jpg",
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "XENA",
                          productexplanation: "White Pajama",
                          price: 70.99,
                          productimage: "dress2.jpg",
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "MİLLA",
                          productexplanation: "Black Women Dress",
                          price: 49.99,
                          productimage: "dress.jpg",
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "Olalook",
                          productexplanation: "Patterned Sweater",
                          price: 29.99,
                          productimage: "dress3.jpg",
                        ),
                        SizedBox(width: 5),
                        GeneralProductCard(
                          productname: "House of Silk",
                          productexplanation: "Short Pajama Set",
                          price: 99.99,
                          productimage: "kazak.jpg",
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ));
  }
}
