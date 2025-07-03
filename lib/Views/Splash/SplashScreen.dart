import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:flutter_tutorial/Views/HomeScreen.dart';
import 'package:flutter_tutorial/Views/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Text(
          "Flutter Tutorial",
          style: TextStyle(color: black, fontSize: 15),
        ),
      ),
    );
  }

  void whereToGo() async {
    var pref = await SharedPreferences.getInstance();

    var islogin = pref.getBool("login");

    Timer(
      Duration(seconds: 3),
      () {
        if (islogin != null) {
          if (islogin) {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ));
          } else {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ));
          }
        } else {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ));
        }
      },
    );
  }
}
