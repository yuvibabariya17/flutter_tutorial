import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    // this is for tween animation
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);

    // this is for colortween animation
    colorAnimation =
        ColorTween(begin: blue, end: red).animate(animationController);

    animationController.addListener(
      () {
        print(animation.value);
        setState(() {});
      },
    );

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          decoration: BoxDecoration(
              color: colorAnimation.value,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
