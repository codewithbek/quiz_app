import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomInput extends StatelessWidget {
  MyCustomInput({
    Key? key,
    this.isPassword,
    required this.textEditingController,
    required this.focusNode,
    required this.hintText,
    required this.keyType,
    required this.codeLength,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyType;
  final int codeLength;
  bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword == true ? true : false,
      keyboardType: keyType,
      controller: textEditingController,
      focusNode: focusNode,
      onChanged: (value) {
        if (value.length == codeLength) {
          focusNode.unfocus();
        }
      },
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: Colors.black.withOpacity(0.3)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE5E5E5), width: 2),
          )),
    );
  }
}
