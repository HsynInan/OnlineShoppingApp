import 'package:flutter/material.dart';
class CouponsPage extends StatefulWidget {
  CouponsPage({Key key}) : super(key: key);

  @override
  _CouponsPageState createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
        title: Text(
          "My Discount Coupons",
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/sale3.png",height: 200,width: double.infinity,fit: BoxFit.fill,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/sale2.png",height: 200,width: double.infinity,fit: BoxFit.fill,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/sale1.jpg",height: 200,width: double.infinity,fit: BoxFit.fill,)
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}