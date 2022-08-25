import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            color: MyColors.C_FCA82F, borderRadius: BorderRadius.circular(5.r)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.sp, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
