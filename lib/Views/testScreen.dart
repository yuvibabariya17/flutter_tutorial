import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Common/Color_const.dart';
import 'package:flutter_tutorial/Controllers/testControllerScreen.dart';
import 'package:flutter_tutorial/Views/NextScreen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({super.key});

  @override
  State<Testscreen> createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  final controller = Get.put(Testcontrollerscreen());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5.h, left: 4.w, right: 4.w),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getTextFormField(controller.nameCtr, "Enter Name", 1),
              SizedBox(height: 1.h),
              getTextFormField(controller.phoneCtr, "Enter Phone", 2),
              SizedBox(height: 1.h),
              getTextFormField(controller.passCtr, "Enter Password", 3),
              SizedBox(height: 1.h),
              getTextFormField(
                  controller.confirmCtr, "Enter Confirm Password", 4),
              SizedBox(
                height: 4.h,
              ),
              getButton(
                  btntext: "Submit",
                  callback: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(Nextscreen());
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }

  getTextFormField(
      TextEditingController? textcontroller, String hint, int index) {
    return TextFormField(
      controller: textcontroller,
      keyboardType: index == 2 ? TextInputType.number : TextInputType.text,
      textInputAction: index == 4 ? TextInputAction.done : TextInputAction.next,
      onChanged: (value) {
        if (index == 1) {
          controller.name.value = value;
        } else if (index == 2) {
          controller.phone.value = value;
        } else if (index == 3) {
          controller.password.value = value;
        } else if (index == 4) {
          controller.confirmPassword.value = value;
        }
      },
      obscureText: index == 3
          ? controller.obsecureText.value
          : index == 4
              ? controller.confirmobsecureText.value
              : false,
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: hint,
          suffixIcon: index == 3
              ? GestureDetector(
                  onTap: () {
                    controller.obsecureText.value =
                        !controller.obsecureText.value;
                    setState(() {});
                  },
                  child: Icon(controller.obsecureText.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                )
              : index == 4
                  ? GestureDetector(
                      onTap: () {
                        controller.confirmobsecureText.value =
                            !controller.confirmobsecureText.value;
                        setState(() {});
                      },
                      child: Icon(controller.confirmobsecureText.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                    )
                  : null),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please $hint';
        }

        if (index == 1) {
          if (value.length < 2) {
            return 'Name Must be at least 2 Characters';
          }
        }
        if (index == 2) {
          if (value.length != 10) {
            return 'Phone Number Must be 10 Digit';
          }
        }
        if (index == 3) {
          if (value.length >= 8) {
            return 'Password must be 8 Characters';
          }
        }
        if (index == 4) {
          if (value != controller.passCtr.text.trim()) {
            return "Please enter same password";
          }
        }
      },
    );
  }

  getButton({required String btntext, required Function callback}) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        height: 6.h,
        width: SizerUtil.width / 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), color: red),
        child: Center(child: Text(btntext)),
      ),
    );
  }
}
