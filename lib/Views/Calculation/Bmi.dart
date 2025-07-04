import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  var weightCtr = TextEditingController();
  var fitCtr = TextEditingController();
  var inchCtr = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 4.w, right: 4.w),
        child: Column(
          children: [
            TextField(
              controller: weightCtr,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(label: Text("Enter your Weight")),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextField(
              controller: fitCtr,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(label: Text("Enter your Height in Fit")),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextField(
              controller: inchCtr,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(label: Text("Enter your Height in Inches")),
            ),
            SizedBox(
              height: 5.h,
            ),
            GestureDetector(
              onTap: () {
                var wt = weightCtr.text.toString();
                var ft = fitCtr.text.toString();
                var it = inchCtr.text.toString();

                if (wt != "" && ft != "" && it != "") {
                  var iWt = int.parse(wt);
                  var iFt = int.parse(ft);
                  var iInch = int.parse(it);

                  var tInch = (iFt * 12) + iInch;

                  var tCm = tInch * 2.54;

                  var tM = tCm / 100;

                  var bmi = iWt / (tM * tM);

                  setState(() {
                    result = "Your BMI is ${bmi.toStringAsFixed(4)}";
                  });
                } else {
                  setState(() {
                    result = "Please fill the required all fields";
                  });
                }
              },
              child: Container(
                height: 5.h,
                width: 50.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              result,
              style: TextStyle(fontSize: 12.sp),
            )
          ],
        ),
      ),
    );
  }
}
