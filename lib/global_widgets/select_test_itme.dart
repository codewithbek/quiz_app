import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SelectTestItem extends StatelessWidget {
  final String subjectName, iconPath;
  final List<Color> gradientColors;
  final int direction, questionsCount;
  final VoidCallback onTap;

  const SelectTestItem(
      {Key? key,
      required this.subjectName,
      required this.iconPath,
      required this.questionsCount,
      required this.gradientColors,
      required this.direction,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.only(top: 25.h),
            padding: EdgeInsets.all(22.sp),
            height: MediaQuery.of(context).size.height * 0.185,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: gradientColors),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: direction == 1
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Text(subjectName,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white, fontSize: 33.sp)),
                      SizedBox(height: 15.h),
                      Text(
                        "Questions Count: $questionsCount",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white, fontSize: 15.sp),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        direction == 1
            ? Positioned(right: 0, top: 0, child: Image.asset(iconPath))
            : Positioned(left: 0, top: 0, child: Image.asset(iconPath)),
      ],
    );
  }
}
