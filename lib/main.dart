import 'package:flutter/material.dart';
import 'AccountWidget/Login.dart';
import 'AccountWidget/signUp.dart';

import 'BottomWidget/homenavigator.dart';
import 'HomePage/NotificationsPage.dart';
import 'HomePage/homepage.dart';
import 'LoginandSplashScreen/SplashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "/LoginScreen": (context) => LoginScreen(),
        "/sıgnUp": (context) => signUp(),
        "/homepage": (context) => Homepage(),
        "/HomeNavigator": (context) => HomeNavigator(),
        "/Notification": (context) => Notifications(),
      },
      
    );
  }
}

