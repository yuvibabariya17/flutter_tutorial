import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClipRrectScreen extends StatefulWidget {
  const ClipRrectScreen({super.key});

  @override
  State<ClipRrectScreen> createState() => _ClipRrectScreenState();
}

class _ClipRrectScreenState extends State<ClipRrectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                height: 20.h,
                width: 70.w,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyaxB1toEzdb6Tn3cl3gCckRFjs0XcUmQGeznsP8jqi3FQ1mxUSXJj0N29ht6kRl78QuY&usqp=CAU",
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
