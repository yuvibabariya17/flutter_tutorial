import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:flutter_tutorial/Views/LoginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                var pref = await SharedPreferences.getInstance();

                pref.setBool("login", false);

                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              child: Container(
                height: 5.h,
                width: 35.w,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "LogOut",
                      style: TextStyle(
                          color: white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowRightFromBracket,
                      size: 2.5.h,
                      color: white,
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
