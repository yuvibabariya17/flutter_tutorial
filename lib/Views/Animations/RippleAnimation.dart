import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';

class RippleAnimationScreen extends StatefulWidget {
  const RippleAnimationScreen({super.key});

  @override
  State<RippleAnimationScreen> createState() => _RippleAnimationScreenState();
}

class _RippleAnimationScreenState extends State<RippleAnimationScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  var radiusList = [100.0, 150.0, 200.0];

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 100.0).animate(animationController);

    animationController.addListener(
      () {
        //  print(animation.value);
        setState(() {});
      },
    );

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Animation"),
      ),
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          getRadius(radiusList[0]),
          getRadius(radiusList[1]),
          getRadius(radiusList[2]),
        ]),
      ),
    );
  }

  Widget getRadius(double radius) {
    double scale = animation.value / 100;
    return Container(
      width: radius * scale,
      height: radius * scale,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: blue.withOpacity((1.0 - scale).clamp(0.0, 1.0)),
      ),
    );
  }
}
