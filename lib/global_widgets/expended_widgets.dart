import 'package:flutter/material.dart';
import 'package:my_quiz_app/utils/colors.dart';


class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget(
      {Key? key, required this.dataLength, required this.expandableValue})
      : super(key: key);

  final int dataLength;
  final int expandableValue;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
            Border.all(color: Colors.grey.shade500, width: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                height: 16,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: const Offset(1, 3),
                          color: Colors.grey.shade300)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: expandableValue,
                      child: Container(
                        decoration: BoxDecoration(
                            color: MyColors.C_FCA82F,
                            borderRadius:
                            BorderRadius.circular(20)),
                      ),
                    ),
                    Expanded(
                        flex: dataLength -
                            expandableValue,
                        child: const SizedBox())
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text("$expandableValue/$dataLength")
          ],
        ),
      ),
    );
  }
}