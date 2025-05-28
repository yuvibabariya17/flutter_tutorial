import 'package:flutter/material.dart';

class ConstraintBoxScreen extends StatefulWidget {
  const ConstraintBoxScreen({super.key});

  @override
  State<ConstraintBoxScreen> createState() => _ConstraintBoxScreenState();
}

class _ConstraintBoxScreenState extends State<ConstraintBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stack"),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
          child: Text("HELLOO HELLOO HELLOO HELLOO HELLOO HELLOO ")),
    );
  }
}
