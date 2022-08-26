import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/utils/icons.dart';


class ResultItem extends StatelessWidget {
  const ResultItem({
    Key? key,
    required this.text,
    required this.isTrue,
  }) : super(key: key);

  final String text;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7,
              color: Color(0xFF000000),
              offset: Offset(0, 4),
            )
          ],
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(text,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp))),
          isTrue
              ? Image.asset(MyIcons.checked, width: 27.h, height: 27.h)
              : Image.asset(MyIcons.cancel, width: 27.h, height: 27.h)
        ],
      ),
    );
  }
}
