import 'package:flutter/material.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';

class MyCustomInput extends StatelessWidget {
  const MyCustomInput(
      {Key? key,
        required this.textController,
        required this.focusNode,
        required this.hintText, required this.keyType,
        required this.isPassword, required this.valueChanged})
      : super(key: key);

  final TextEditingController textController;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyType;
  final bool isPassword;
  final ValueChanged<String> valueChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyType,
      controller: textController,
      focusNode: focusNode,
      onChanged: valueChanged,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15, color: MyColors.black.withOpacity(0.3)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.C_E5E5E5, width: 2),
          )),
    );
  }
}