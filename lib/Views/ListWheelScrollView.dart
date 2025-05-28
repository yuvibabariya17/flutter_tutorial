import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListWheelScrollViewScreen extends StatefulWidget {
  const ListWheelScrollViewScreen({super.key});

  @override
  State<ListWheelScrollViewScreen> createState() =>
      _ListWheelScrollViewScreenState();
}

class _ListWheelScrollViewScreenState extends State<ListWheelScrollViewScreen> {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheel ScrollView"),
        centerTitle: true,
      ),
      body: Center(
        child: ListWheelScrollView(
            itemExtent: 100,
            children: list.map(
              (e) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        e.toString(),
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ).toList()),
      ),
    );
  }
}
