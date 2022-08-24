import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';

class SelectTestItem extends StatelessWidget {
  const SelectTestItem(
      {Key? key,
        required this.gradientColors,
        required this.text,
        required this.questionCount,
        required this.iconPath,
        required this.direction, required this.onTap})
      : super(key: key);

  final List<Color> gradientColors;
  final String text;
  final int questionCount;
  final String iconPath;
  final int direction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 35),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: gradientColors),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        crossAxisAlignment: direction == 1
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        children: [
                          Text(
                            text,
                            style: TextStyle(fontSize: 38.sp, color: MyColors.white, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Questions Count: $questionCount",
                            style: TextStyle(fontSize: 20.sp, color: MyColors.white,fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          direction == 1
              ? Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              iconPath,
              width: 100,
              height: 100,
            ),
          )
              : Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              iconPath,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}