import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  var myopacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: myopacity,
              duration: Duration(seconds: 2),
              child: Container(
                height: 5.h,
                width: 50.w,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (isVisible) {
                  myopacity = 1.0;
                  isVisible = false;
                } else {
                  myopacity = 0.0;
                  isVisible = true;
                }
              });
            },
            child: Container(
              height: 5.h,
              width: 30.w,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Animate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
