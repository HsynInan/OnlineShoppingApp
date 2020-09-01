
import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/BagCard.dart';
import 'package:shopapp/Widgets/PaymentPage.dart';



class Bag extends StatefulWidget {
  Bag({Key key}) : super(key: key);

  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: Container(
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        width: double.infinity,
        color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Total: \$ 18.49',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
              },
              child: Text('Confrim Bag'),
              borderSide: BorderSide(color: Colors.white),
              color: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
        appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Bag",
          style: TextStyle(color: Colors.black),
        ),
       
        ),
        body: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BagCard(productname: " Women Black Dress",productseller: "Hummel",prductsize: "M",productcount: 2,price: 9.99,image: "dress4.jpg",),
              SizedBox(height: 5,),
               BagCard(productname: "Gary tight Set",productseller: "U.S. Polo Assn",prductsize: "S",productcount: 4,price: 19.99,image: "dress6.jpg",),
              SizedBox(height: 5,),
               BagCard(productname: "Black Women Dress",productseller: "Colin's",prductsize: "L",productcount: 5,price: 80.99,image: "kazak.jpg",),
              SizedBox(height: 5,), 
              BagCard(productname: "Women  White Pajama",productseller: "Hummel",prductsize: "XXL",productcount: 2,price: 59.99,image: "dress5.jpg",),
              SizedBox(height: 5,), 
              BagCard(productname: "Man White Shoe",productseller: "Jump",prductsize: "44",productcount: 1,price: 99.99,image: "shoe.jpg",),
              SizedBox(height: 5,), 
              BagCard(productname: "Patterned Sweater Pajama",productseller: "Defacto",prductsize: "M",productcount: 1,price: 29.99,image: "dress3.jpg",),
              SizedBox(height: 5,),

            ],
          ),
        )
      ),
    );
  }
}