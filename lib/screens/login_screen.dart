import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/global_widgets/my_custom_appbar.dart';
import 'package:my_quiz_app/global_widgets/my_custom_button.dart';
import 'package:my_quiz_app/screens/sms_code_screen.dart';
import 'package:my_quiz_app/utils/icons.dart';
import 'package:my_quiz_app/utils/utility_functions.dart';
import '../utils/colors.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController textController = TextEditingController();
  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const MyCustomAppBar(
          title: "Login",
        ),
        backgroundColor: MyColors.white,
        body: Column(
          children: [
            Center(child: Lottie.asset(MyIcons.login_lottie)),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: textController,
                focusNode: focusNode,
                onChanged: (value) {
                  print(value);
                  if (value == "+998903814573") {
                    UtilityFunctions.getMyToast(message: "Enter SMS code");
                  }
                },
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: MyColors.black.withOpacity(0.3)),
                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: MyColors.C_E5E5E5, width: 2))),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: MyCustomButton(
                text: "Login",
                onTap: () {
                  if (textController.text == "+998903814573") {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const SMSCodeScreen();
                    }));
                  } else {
                    UtilityFunctions.getMyToast(message: "Invalid number!");
                  }
                },
                buttonText: 'Login',
              ),
            ),
            const Expanded(child: const SizedBox()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Text(
                "term's and conditons apply POWERED BY - sparrowdevops.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: MyColors.black.withOpacity(0.5)),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
