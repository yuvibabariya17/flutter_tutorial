import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:sizer/sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserpreferenceScreen extends StatefulWidget {
  const UserpreferenceScreen({super.key});

  @override
  State<UserpreferenceScreen> createState() => _UserpreferenceScreenState();
}

class _UserpreferenceScreenState extends State<UserpreferenceScreen> {
  var nameCtr = TextEditingController();

  var nameValue = "No Name Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

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

                pref.setString("name", nameCtr.text.toString());
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

  void getValue() async {
    var pref = await SharedPreferences.getInstance();

    var getName = pref.getString("name");

    nameValue = getName!;
    setState(() {});
  }
}
