import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../global_widgets/result_item.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    Key? key,
    required this.totalQuestionsCount,
    required this.trueQuestionsCount,
    required this.answers,
    required this.percentage,
  }) : super(key: key);

  final int totalQuestionsCount, trueQuestionsCount;
  final List<bool> answers;
  final double percentage;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String lottie = "";

  @override
  void initState() {
    if (widget.percentage >= 80) {
      lottie = MyIcons.tickJson;
    } else if (widget.percentage >= 60 && widget.percentage < 80) {
      lottie = MyIcons.good;
    } else {
      lottie = MyIcons.bad;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_4047C1,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(lottie),
                Text(
                  "See your result",
                  style: TextStyle(fontWeight: FontWeight.w900,color: MyColors.C_FCA82F, fontSize: 22.sp),
                ),
                SizedBox(height: 25.h),
                Text(
                    "${widget.trueQuestionsCount} / ${widget.totalQuestionsCount}",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white, fontSize: 35.sp)),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ResultItem(
                            text: "Question: ${index + 1}",
                            isTrue: widget.answers[index]),
                      );
                    },
                    itemCount: widget.answers.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
