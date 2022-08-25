import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/registration_screen.dart';
import '../global_widgets/my_custom_button.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../utils/icons.dart';
import '../utils/utility_functions.dart';

class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({Key? key}) : super(key: key);

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode focusNode = FocusNode();

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
            "Otp",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 24.sp),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Image.asset(MyIcons.logo),
              SizedBox(height: 60.h),
              Text(
                "Enter your 6 digit here",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade400,
                    fontSize: 18.sp),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: PinFieldAutoFill(
                  focusNode: focusNode,
                  controller: textEditingController,
                  decoration: const UnderlineDecoration(
                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    colorBuilder: FixedColorBuilder(Colors.black),
                  ),
                  onCodeSubmitted: (value) {
                    focusNode.unfocus();
                  },
                  onCodeChanged: (value) {
                    if (value?.length == 6) {
                      focusNode.unfocus();
                    }
                  },
                  codeLength: 6,
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: MyButton(
                  buttonText: "Login",
                  onTap: () {
                    if (textEditingController.text == "123456") {
                      UtilityFunctions.getMyToast(message: "Fill this inputs");
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const RegistrScreen();
                      }));
                    } else {
                      UtilityFunctions.getMyToast(message: "Invalid SMS code");
                    }
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text("login with social media",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                      fontSize: 17.sp)),
            ],
          ),
        ));
  }
}
