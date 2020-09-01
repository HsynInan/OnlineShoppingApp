import 'package:flutter/material.dart';

class SellerSmallCard extends StatelessWidget {

  final String sellerimage;

  SellerSmallCard(
  
    this.sellerimage,

  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(31),
          shadowColor:Colors.white38,
          child: GestureDetector(
            onTap: () {print("tıklandı");},
            child: Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset("assets/$sellerimage",),
              ),
              
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
       
      ],
    );
  }
}
