import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({super.key});

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  var nameCtr = TextEditingController();

  var nameValue = "No saved data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 3.w, right: 3.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameCtr,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Enter your name"),
            ),
            SizedBox(height: 5.h),
            GestureDetector(
              onTap: () async {
                var pref = await SharedPreferences.getInstance();

                pref.setString("login", nameCtr.text.toString());
              },
              child: Container(
                height: 5.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: blue),
                child: Center(child: Text("Submit")),
              ),
            ),
            SizedBox(height: 5.h),
            Text(nameValue)
          ],
        ),
      ),
    );
  }

  void getlogin() async {
    var pref = await SharedPreferences.getInstance();
    var getname = pref.getString('login');

    nameValue = getname!;
  }
}
