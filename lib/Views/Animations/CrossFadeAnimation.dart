import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CrossFadeAnimationScreen extends StatefulWidget {
  const CrossFadeAnimationScreen({super.key});

  @override
  State<CrossFadeAnimationScreen> createState() =>
      _CrossFadeAnimationScreenState();
}

class _CrossFadeAnimationScreenState extends State<CrossFadeAnimationScreen> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    // Timer(
    //   Duration(seconds: 3),
    //   () {
    //     reload();
    //   },
    // );
  }

  // this is call toggling

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cross Fade Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstCurve: Curves.bounceInOut,
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 3),
              firstChild: Container(
                height: 10.h,
                width: 10.h,
                color: Colors.blueAccent,
              ),
              secondChild: SizedBox(
                height: 10.h,
                width: 10.h,
                child: Center(child: FaIcon(FontAwesomeIcons.amazon)),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  reload();
                });
              },
              child: Container(
                height: 4.h,
                width: 20.w,
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
      ),
    );
  }
}
