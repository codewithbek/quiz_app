import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/icons.dart';
import 'package:my_quiz_app/utils/styles.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key,
        required this.totalQuestionsCount,
        required this.trueAnswersCount})
      : super(key: key);
  final int totalQuestionsCount;
  final int trueAnswersCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
        child: Column(
          children: [
            Lottie.asset(MyIcons.congr),
            Expanded(
              child: Text(
                "Congratulations, true answers count: ${widget.trueAnswersCount}",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}