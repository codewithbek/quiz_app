import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/global_widgets/my_custom_button.dart';
import 'package:my_quiz_app/global_widgets/my_custom_input.dart';
import 'package:my_quiz_app/screens/select_quiz_screen.dart';
import 'package:my_quiz_app/utils/utility_functions.dart';
import '../utils/icons.dart';

class RegistrScreen extends StatefulWidget {
  const RegistrScreen({Key? key}) : super(key: key);

  @override
  State<RegistrScreen> createState() => _RegistrScreenState();
}

class _RegistrScreenState extends State<RegistrScreen> {
  final TextEditingController textEditingController1 = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();
  final TextEditingController textEditingController3 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
          title: Text(
            "Register",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 24.sp),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Image.asset(MyIcons.logo),
              SizedBox(height: 90.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    MyCustomInput(
                      textEditingController: textEditingController1,
                      focusNode: focusNode1,
                      hintText: "Enter your name",
                      keyType: TextInputType.name,
                      codeLength: 13,
                    ),
                    SizedBox(height: 15.h),
                    MyCustomInput(
                      isPassword: true,
                      textEditingController: textEditingController2,
                      focusNode: focusNode2,
                      hintText: "Password (no more than 8 symbols)",
                      keyType: TextInputType.text,
                      codeLength: 8,
                    ),
                    SizedBox(height: 15.h),
                    MyCustomInput(
                      isPassword: true,
                      textEditingController: textEditingController3,
                      focusNode: focusNode3,
                      hintText: "Confirm Password",
                      keyType: TextInputType.text,
                      codeLength: 8,
                    ),
                    SizedBox(height: 30.h),
                    MyButton(
                        buttonText: "Register",
                        onTap: () {
                          if (textEditingController1.text.isNotEmpty &&
                              textEditingController2.text.isNotEmpty &&
                              textEditingController3.text.isNotEmpty) {
                            if (textEditingController2.text ==
                                textEditingController3.text) {
                              UtilityFunctions.getMyToast(
                                  message: "You are successfully registered!");
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return const SelectQuizScreen();
                              }));
                            } else {
                              UtilityFunctions.getMyToast(
                                  message: "Your password did not matched");
                            }
                          } else {
                            UtilityFunctions.getMyToast(
                                message:
                                    "You didn't fill all of them! Try to fill again");
                          }
                        }),
                    SizedBox(height: 25.h),
                    Text(
                      "If you have already account click here",
                      style: TextStyle(fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400, fontSize: 16.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
