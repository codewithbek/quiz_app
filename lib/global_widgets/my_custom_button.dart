import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/utils/colors.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({Key? key, required this.text, required this.onTap, required String buttonText}) : super(key: key);


  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: MyColors.C_FCA82F,
          borderRadius: BorderRadius.circular(5.r)
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: MyColors.white ),),
        ),
      ),
    );
  }
}
