import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          Positioned(
            top: 20,
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              width: 170,
              height: 170,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 50,
            bottom: 50,
            left: 50,
            right: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          )
        ]),
      ),
    );
  }
}
