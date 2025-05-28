import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({super.key});

  @override
  State<RichTextScreen> createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Stack"),
        ),
        body: RichText(
            text: TextSpan(
          style: TextStyle(color: Colors.grey),
          children: [
            TextSpan(text: "Already have an Account"),
            TextSpan(
                text: "Login",
                style: TextStyle(color: Colors.blue, fontSize: 16))
          ],
        )));
  }
}
