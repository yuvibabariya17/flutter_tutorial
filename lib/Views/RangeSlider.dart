import 'package:flutter/material.dart';

class RangeSliderScreen extends StatefulWidget {
  const RangeSliderScreen({super.key});

  @override
  State<RangeSliderScreen> createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("RangeSlider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RangeSlider(
            values: values,
            labels: rangeLabels,
            divisions: 10,
            onChanged: (value) {
              values = value;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
