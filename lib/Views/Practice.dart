import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:flutter_tutorial/Models/PracticeModel.dart';
import 'package:sizer/sizer.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int? selectedIndex; // Track tapped item

  @override
  Widget build(BuildContext context) {
    final itemCount =
        PracticeModel.dataList.length + (selectedIndex != null ? 1 : 0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.1,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          // If dropdown should show, and this is the slot for dropdown, show dropdown container
          if (selectedIndex != null && index == selectedIndex! + 1) {
            final options = PracticeModel.dataList[selectedIndex!].options;

            return Container(
              // Make this dropdown full width by using GridView crossAxisCount = 2, so width = 2 items width + spacing
              // So this container spans two columns by using a SizedBox with width
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 0),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              // Example options you want to show - replace with your own
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: options
                    .map((option) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text(option, style: TextStyle(fontSize: 14)),
                        ))
                    .toList(),
              ),
            );
          }

          // Calculate actual item index (adjust for dropdown insertion)
          int actualIndex = index;
          if (selectedIndex != null && index > selectedIndex!) {
            actualIndex = index - 1;
          }

          PracticeModel data = PracticeModel.dataList[actualIndex];

          return GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex == actualIndex) {
                  selectedIndex = null; // Close dropdown if same tapped
                } else {
                  selectedIndex = actualIndex; // Open dropdown for new item
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.1,
                    blurRadius: 3,
                    offset: Offset(0.5, 0.5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 0.5.h, left: 1.w, right: 1.w),
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        data.imgUrl,
                        height: 15.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    data.name,
                    style: TextStyle(fontSize: 10.5.sp),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
