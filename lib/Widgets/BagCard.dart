import 'package:flutter/material.dart';
import 'package:shopapp/ProductDetails/ProductDetailsPage.dart';

class BagCard extends StatefulWidget {
  final String productname;
  final String prductsize;
  final String productseller;
  final String image;
  final int productcount;
  final double price;

  const BagCard(
      {Key key,
      this.productname,
      this.prductsize,
      this.productcount,
      this.price,
      this.productseller,
      this.image})
      : super(key: key);
  @override
  _BagCardState createState() => _BagCardState();
}

class _BagCardState extends State<BagCard> {
  bool _addProduct = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        // color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(5),
              shadowColor:Colors.white38,
              color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Seller: ",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                  text: "${widget.productseller}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green.shade500,
                                ),
                                Text(
                                  "Cargo is free",
                                  style:
                                      TextStyle(color: Colors.green.shade500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 135,
                            width: 30,
                            color: Colors.white,
                            child: Checkbox(
                              value: _addProduct,
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  _addProduct = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
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
                              height: 135,
                              width: 90,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                           // flex: 4,
                            child: Container(
                              height: 135,
                              width: 30,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "${widget.productname}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      Row(
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
                                      Text("Size:${widget.prductsize}",
                                          textDirection: TextDirection.ltr),
                                      Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Material(
                                              elevation: 8,
                                              shadowColor:Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Container(
                                                height: 25,
                                                width: 60,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "Count",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color:
                                                              Colors.black45),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                        "${widget.productcount}")
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "\$ ${widget.price}",
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                print("urun sılındı");
                              },
                              child: Icon(Icons.delete_outline),
                            ),
                            height: 135,
                            width: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
        ),
      ),
    );
  }
}
