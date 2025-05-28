// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateAndTimeScreen extends StatefulWidget {
  const DateAndTimeScreen({super.key});

  @override
  State<DateAndTimeScreen> createState() => _DateAndTimeScreenState();
}

class _DateAndTimeScreenState extends State<DateAndTimeScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Current Date :${DateFormat('Hms').format(time)}"),
            GestureDetector(
              onTap: () async {
                DateTime? datepicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2030));
              },
              child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Select Date"))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Current Time :${DateFormat('Hms').format(time)}"),
            GestureDetector(
              onTap: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                  context: context,
                );
              },
              child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Select Time"))),
            )
          ],
        ),
      ),
    );
  }
}
