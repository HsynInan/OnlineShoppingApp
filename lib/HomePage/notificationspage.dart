import 'package:flutter/material.dart';
import 'package:shopapp/Widgets/NotificationCard.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
        title: Text("Notification",style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(14),
              child: NotificationCard(notificationtitle: "Price Down",notificationcontext: "Get the discount which you looked",notificationdate: "21/09/2020",productimage: "dress.jpg",),),
              Padding(padding: EdgeInsets.all(14),
              child: NotificationCard(notificationtitle: "Discount",notificationcontext: "Buy the electronics product with under the total price 100 \$",notificationdate: "11/09/2020",productimage: "dress9.jpg"),),
              Padding(padding: EdgeInsets.all(14),
              child: NotificationCard(notificationtitle: "Hurry Up",notificationcontext: "4 people look your product where your bag",notificationdate: "09/09/2020",productimage: "shoe.jpg"),),
              Padding(padding: EdgeInsets.all(14),
              child: NotificationCard(notificationtitle: "Price Down",notificationcontext: "Get the discount which you looked",notificationdate: "01/09/2019",productimage: "computer.jpg"),),
              
            ],
          ),
        )
      ),
    );
  }
}