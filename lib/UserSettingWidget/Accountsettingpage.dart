import 'package:flutter/material.dart';
import 'package:shopapp/AccountWidget/Login.dart';
import 'package:shopapp/HomePage/notificationspage.dart';
import 'package:shopapp/UserSettingWidget/Help.dart';


import 'AdressPage.dart';
import 'Coupons.dart';
import 'PassaportChange.dart';
import 'myorderspage.dart';


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black45),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Myorderspage()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/order (1).png",
                      color: Colors.black45,
                      width: 24,
                      height: 24,
                    ), onPressed: () {  },
                  ),
                  title: Text(
                    "My Orders",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>AdressInformation()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/address.png",
                      width: 24,
                      height: 24,
                      color: Colors.black45,
                    ), onPressed: () {  },
                  ),
                  title: Text(
                    "Address Information",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>CouponsPage()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/sale.png",
                      color: Colors.black45,
                      width: 24,
                      height: 24,
                    ), onPressed: () { 
                      
                      print("dedede");
                     },
                  ),
                  title: Text(
                    "Discount Coupons",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Notifications()));},
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.notifications), onPressed: () {  },
                  ),
                  title: Text(
                    "Notification",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>PasswordChange()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/password.png",
                      color: Colors.black45,
                      width: 24,
                      height: 24,
                    ), onPressed: () {  },
                  ),
                  title: Text(
                    "Password Change",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>LoginScreen()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/logout.png",
                      color: Colors.black45,
                      width: 24,
                      height: 24,
                    ), onPressed: () {  },
                  ),
                  title: Text(
                    "Log out",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                splashColor: Colors.green[300],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Help()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.help), onPressed: () {  },
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 16),
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