import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/login_screen.dart';
import 'package:my_quiz_app/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
        return const LoginScreen();
      }));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.C_4047C1,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light
        ),
      ),
      backgroundColor: MyColors.C_4047C1,
      body: Center(
        child: Text("Welcome", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: MyColors.white),),
      ),
    );
  }
}
