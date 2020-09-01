import 'package:flutter/material.dart';
import 'package:shopapp/ProductDetails/ProductDetailsPage.dart';

class FavoritesCard extends StatefulWidget {
  final String productname;
  final String productexplanation;
  final String image;
  final double price;
  const FavoritesCard(
      {this.productname, this.price, this.productexplanation, this.image});

  @override
  _FavoritesCardState createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  @override
  Widget build(BuildContext context) {
    //SizeSelectPanel
    void _showSizeSelectPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 320,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                          color: Colors.white10,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/${widget.image}",
                                  fit: BoxFit.fill,
                                  height: 150,
                                  width: 100,
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.white10,
                                    alignment: Alignment.centerLeft,
                                    height: 120,
                                    width: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${widget.productname}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "${widget.productexplanation}",
                                            style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "\$ ${widget.price}",
                                            style: TextStyle(
                                                color: Colors.orange.shade300,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Container(
                                    color: Colors.white10,
                                    height: 120,
                                    width: 90,
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.cancel),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          color: Colors.white10,
                          height: 80,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Size:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "XS",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "S",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "M",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "L",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "XL",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        width: 40,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "XXL",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Select Size",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            );
          });
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        
        color: Colors.white,
        elevation: 8,
        shadowColor:Colors.white38,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPageBody(
                                      productname: "XENA",
                                      productexplanation: "White Pajama",
                                      price: 299.99,
                                      productimage: "dress4.jpg",
                                    )));
                      },
                      child: Image.asset(
                        "assets/${widget.image}",
                        fit: BoxFit.fill,
                        height: 200,
                        width: 130,
                      )),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8, top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.productname}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("urun sılındı");
                                  },
                                  child: Icon(Icons.delete_outline),
                                ),
                              ],
                            ),
                            Text(
                              "${widget.productexplanation}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black45),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/starr.png",
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/starr.png",
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/starr.png",
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/starr.png",
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/star1.png",
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                "\$ ${widget.price} ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.green),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 24.0, right: 12),
                                    child: GestureDetector(
                                      onTap: () {
                                        _showSizeSelectPanel();
                                        print("dawdaw");
                                      },
                                      child: Material(
                                        elevation: 6,
                                        shadowColor:Colors.white38,
                                        borderRadius: BorderRadius.circular(2),
                                        
                                        color: Colors.white,
                                        child: Container(
                                          height: 24,
                                          width: 60,
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5, left: 5),
                                                  child: Text(
                                                    "size",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.black45),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5, left: 5),
                                                  child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: 16,
                                                      color: Colors.black54),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, right: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      print("add to bag");
                                    },
                                    child: Material(
                                      elevation: 6,
                                     shadowColor:Colors.white38,
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.white,
                                      child: Container(
                                        height: 24,
                                        width: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, left: 5),
                                              child: Icon(
                                                Icons.shopping_cart,
                                                color: Colors.green[300],
                                                size: 16,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, left: 5),
                                              child: Text("Add to Bag",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.black45)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
