import 'package:flutter/material.dart';
import 'package:shopapp/ProductDetails/ProductDetailsPage.dart';

class SalesWidget extends StatefulWidget {
  final String productname;
  final String productexplanation;
  final String productimage;
  final double price;
  final double beforeprice;
  final int discountcount;

  const SalesWidget(
      {Key key,
      this.productname,
      this.productexplanation,
      this.price,
      this.beforeprice,
      this.discountcount,
      this.productimage})
      : super(key: key);

  @override
  _SalesWidgetState createState() => _SalesWidgetState();
}

class _SalesWidgetState extends State<SalesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, bottom: 12, right: 7),
      child: Material(
        shadowColor: Colors.white38,
        elevation: 6,
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            MaterialPageRoute(
                builder: (context) => DetailPageBody(
                      productname: "XENA",
                      productexplanation: "White Pajama",
                      price: 299.99,
                      productimage: "dress4.jpg",
                    ));
          },
          child: Container(
            height: 310,
            width: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      "assets/${widget.productimage}",
                      fit: BoxFit.fill,
                      height: 200,
                      width: double.infinity,
                    ),
                    Positioned(
                      right: 0,
                      top: -1,
                      child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey[700],
                          ),
                          onPressed: () {}),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Text(
                    "${widget.productname}",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Text(
                    "${widget.productexplanation}",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(4869)",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 8.0),
                      child: Text(
                        "${widget.beforeprice} \$",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 8.0),
                      child: Text(
                        "% ${widget.discountcount} Discount",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 8.0),
                  child: Text(
                    "${widget.price} \$",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
