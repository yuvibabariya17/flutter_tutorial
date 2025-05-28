import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:flutter_tutorial/Views/DateandTimeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 4.w, right: 4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailCtr,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text("Email")),
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: passCtr,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text("Password")),
            ),
            SizedBox(height: 5.h),
            GestureDetector(
              onTap: () async {
                var pref = await SharedPreferences.getInstance();

                pref.setBool("login", true);
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return DateAndTimeScreen();
                  },
                ));
              },
              child: Container(
                height: 5.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: blue),
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(color: white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
