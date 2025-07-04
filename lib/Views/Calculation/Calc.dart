import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 5.h),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Addition
                  GestureDetector(
                    onTap: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sum = no1 + no2;

                      result = "The Sum of $no1 and $no2 is $sum";

                      setState(() {});
                    },
                    child: Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(child: Text("Add")),
                    ),
                  ),

                  // SubStraction
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sub = no1 - no2;

                      result = "The Sub of $no1 and $no2 is $sub";

                      setState(() {});
                    },
                    child: Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(child: Text("Sub")),
                    ),
                  ),
                  // Multiplication
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var multiply = no1 * no2;

                      result =
                          "The Multiplication of $no1 and $no2 is $multiply";

                      setState(() {});
                    },
                    child: Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(child: Text("Multi")),
                    ),
                  ),

                  // Divisionn
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var div = no1 / no2;

                      result = "The Division of $no1 and $no2 is $div";

                      setState(() {});
                    },
                    child: Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(child: Text("Div")),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                result,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
