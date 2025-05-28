import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';

class GradientScreen extends StatefulWidget {
  const GradientScreen({super.key});

  @override
  State<GradientScreen> createState() => _GradientScreenState();
}

class _GradientScreenState extends State<GradientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient:
                  // LinearGradient

                  LinearGradient(
                      colors: [gradient1, gradient2],
                      begin: FractionalOffset(1.0, 0.0),
                      end: FractionalOffset(0.0, 1.0))

              // RadialGradient

              //  RadialGradient(
              //     colors: [gradient1, gradient2],
              //     center: Alignment.bottomCenter)

              ),
          child: Center(child: Text("Gradient")),
        ),
      ),
    );
  }
}
