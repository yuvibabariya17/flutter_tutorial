import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  var _height = 5.h;
  var _width = 40.w;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              height: _height,
              width: _width,
              color: Colors.blue,
            ),
            SizedBox(height: 2.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (flag) {
                    _height = 10.h;
                    _width = 10.w;
                    flag = false;
                  } else {
                    _height = 5.h;
                    _width = 40.w;
                    flag = true;
                  }
                });
              },
              child: Container(
                height: 5.h,
                width: 20.w,
                color: Colors.black,
                child: Center(
                    child: Text(
                  "Animate",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
