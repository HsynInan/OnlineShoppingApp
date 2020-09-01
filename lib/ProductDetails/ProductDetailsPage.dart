import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/GeneralProductCard.dart';

class DetailPageBody extends StatefulWidget {
  final String productname;
  final String productexplanation;
  final String productimage;
  //final String image;
  final double price;
  DetailPageBody(
      {Key key,
      this.productname,
      this.productexplanation,
      this.price,
      this.productimage})
      : super(key: key);

  @override
  _DetailPageBodyState createState() => _DetailPageBodyState();
}

class _DetailPageBodyState extends State<DetailPageBody> {
  int numOfItems = 1;
  int totalprice = 0;

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
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/${widget.productimage}",
                                  fit: BoxFit.fill,
                                  height: 150,
                                  width: 100,
                                ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 5),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(8),
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
                                        borderRadius: BorderRadius.circular(8),
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
                                        borderRadius: BorderRadius.circular(8),
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
                                        borderRadius: BorderRadius.circular(8),
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
                                        borderRadius: BorderRadius.circular(8),
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
                                        borderRadius: BorderRadius.circular(8),
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
                              color: Colors.white, fontWeight: FontWeight.bold),
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

  Widget _productcounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.red
                  ),
                  child: Image.asset(
                    "assets/dress4.jpg",
                    width: double.infinity,
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                        child: Text(
                          "${widget.productname}",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, top: 4.0),
                        child: Text(
                          "${widget.productexplanation}",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 18),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, top: 4.0, bottom: 14),
                            child: Text("4.6"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 4.0, bottom: 14),
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
                                ),Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 12,
                                  width: 12,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 4.0, bottom: 14),
                            child: Text("475 Değerlendirme"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "Size and Count",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Select"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    onPressed: () {
                                      _showSizeSelectPanel();
                                    })
                              ],
                            ),
                            _productcounter()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "Product Informations",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.arrow_right),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Free return within 15 days ")
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.arrow_right),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("This product will be send by NIKE")
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.arrow_right),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("We have color you want")
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.arrow_right),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Best selling product")
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "NIKE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 30,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade300,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text("8.7"),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Text(
                                "See More",
                                style: TextStyle(color: Colors.orange),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.orange,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(left: 14, top: 8, right: 14, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    " Similar Products",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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

            // PRODUCT REVIEWS

            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  // height: MediaQuery.of(context).size.width,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "Product Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/dress4.jpg",
                              fit: BoxFit.fill,
                              height: 100,
                              width: 80,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "${widget.productname}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${widget.productexplanation}",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("4.6"),
                                      Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 10,
                                  width: 10,
                                ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.more_vert), onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text(
                          "The color is the same as it looks.\n Shabby and tall lavers can get a size bigger \n I think t-shirt should be one size bigger",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text("20/10/2020|20.19"),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.more_vert), onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text(
                          "The color is the same as it looks.\n Shabby and tall lavers can get a size bigger \n I think t-shirt should be one size bigger",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text("20/10/2020|20.19"),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.more_vert), onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text(
                          "The color is the same as it looks.\n Shabby and tall lavers can get a size bigger \n I think t-shirt should be one size bigger",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text("20/10/2020|20.19"),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/starr.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                                Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),Image.asset(
                                  "assets/star1.png",
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.more_vert), onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text(
                          "The color is the same as it looks.\n Shabby and tall lavers can get a size bigger \n I think t-shirt should be one size bigger",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        child: Text("20/10/2020|20.19"),
                      ),
                      Divider(
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Complain",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '\$ ${widget.price * numOfItems}',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add to Bag",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
