import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class FontAwesomeIconScreen extends StatefulWidget {
  const FontAwesomeIconScreen({super.key});

  @override
  State<FontAwesomeIconScreen> createState() => _FontAwesomeIconScreenState();
}

class _FontAwesomeIconScreenState extends State<FontAwesomeIconScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stack"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Icon(Icons.account_box), FaIcon(FontAwesomeIcons.google)],
        ),
      ),
    );
  }
}
