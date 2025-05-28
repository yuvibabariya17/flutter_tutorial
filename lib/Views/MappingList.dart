import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class MappingListScreen extends StatefulWidget {
  const MappingListScreen({super.key});

  @override
  State<MappingListScreen> createState() => _MappingListScreenState();
}

class _MappingListScreenState extends State<MappingListScreen> {
  // old list

  //var list = ['Yuvi', 'Justin', 'Sachin', 'Parth', 'Jaydip'];

  // new list

  var listName = [
    {'name': 'Yuvi', 'mobNo': '9265449964', 'unread': '2'},
    {'name': 'Justin', 'mobNo': '7359792115', 'unread': '3'},
    {'name': 'Sachin', 'mobNo': '9876543210', 'unread': '5'},
    {'name': 'Parth', 'mobNo': '9653198820', 'unread': '1'},
    {'name': 'Jaydip', 'mobNo': '9873216540', 'unread': '2'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping List Into Widget"),
      ),
      body: Center(
        child: ListView(
            children: listName.map((value) {
          return ListTile(
            leading: CircleAvatar(
              radius: 3.h,
              child: FaIcon(FontAwesomeIcons.user),
            ),
            title: Text(value['name'].toString()),
            subtitle: Text(value['mobNo'].toString()),
            trailing: CircleAvatar(
              radius: 1.5.h,
              backgroundColor: black,
              child: Center(
                  child: Text(
                value['unread'].toString(),
                style: TextStyle(color: white),
              )),
            ),
          );
        }).toList()

            // this is for only one data in list

            // return Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: blue,
            //     ),
            //     height: 7.h,
            //     width: double.infinity,
            //     child: Center(child: Text(e.)),
            //   ),
            // );
            //   },
            // ).toList(),
            ),
      ),
    );
  }
}
