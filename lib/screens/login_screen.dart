import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_quiz_app/global_widgets/my_custom_button.dart';
import 'package:my_quiz_app/global_widgets/my_custom_input.dart';
import '../utils/icons.dart';
import '../utils/utility_functions.dart';
import 'sms_code_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            "Login",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 24.sp),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Lottie.asset(MyIcons.loginLottie),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: MyCustomInput(
                codeLength: 13,
                textEditingController: textEditingController,
                focusNode: focusNode,
                hintText: "Enter your mobile phone",
                keyType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: MyButton(
                buttonText: "Login",
                onTap: () {
                  if (textEditingController.text == "+998991234567") {
                    UtilityFunctions.getMyToast(message: "Enter SMS code!");
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const SmsCodeScreen();
                    }));
                  } else {
                    UtilityFunctions.getMyToast(message: "Invalid number");
                  }
                },
              ),
            ),
            const Expanded(child: SizedBox()),
            Text("terms and conditions apply",
                style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.w500)),
            SizedBox(height: 7.h),
            Text("POWERED BY - sparrowdevops.com",
                style: TextStyle(
                    color: Colors.grey.shade400, fontWeight: FontWeight.w500)),
            SizedBox(height: 7.h),
          ],
        ));
  }
}
