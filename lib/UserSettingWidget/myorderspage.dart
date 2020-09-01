import 'package:flutter/material.dart';

class Myorderspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "01 July 2020",
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text("Total : 69.99 \$"),
                        trailing: InkWell(
                          onTap: () {},
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_right,
                                size: 35,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Order Prepared",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/shoe2.jpg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 96,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
