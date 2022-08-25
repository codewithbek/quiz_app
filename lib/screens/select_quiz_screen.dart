import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/global_widgets/select_test_itme.dart';
import 'package:my_quiz_app/model/quiz_data.dart';
import 'package:my_quiz_app/screens/my_quiz_screen.dart';

import '../data/quiz_repository.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class SelectQuizScreen extends StatefulWidget {
  const SelectQuizScreen({Key? key}) : super(key: key);

  @override
  State<SelectQuizScreen> createState() => _SelectQuizScreenState();
}

class _SelectQuizScreenState extends State<SelectQuizScreen> {
  List<QuizData> englishSet = QuizRepository.englishA1A2();
  List<QuizData> mathSet = QuizRepository.mathSet();
  List<QuizData> sportSet = QuizRepository.sportSet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.C_4047C1,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        leading: Image.asset(MyIcons.user),
        title: Image.asset(
          MyIcons.whiteLogo,
          width: 120,
        ),
        actions: [
          Image.asset(MyIcons.wallet),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding:
              EdgeInsets.only(bottom: 40.h, right: 15.w, left: 15.w, top: 10.h),
          child: Column(
            children: [
              SelectTestItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyQuizScreen(
                        quizList: englishSet,
                        quizName: 'English',
                      );
                    }));
                  },
                  subjectName: "English",
                  iconPath: MyIcons.bookStack,
                  questionsCount: englishSet.length,
                  gradientColors: MyColors.redBar,
                  direction: 1),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyQuizScreen(
                        quizList: mathSet,
                        quizName: 'Math',
                      );
                    }));
                  },
                  subjectName: "Math",
                  iconPath: MyIcons.bookStack,
                  questionsCount: mathSet.length,
                  gradientColors: MyColors.blueBar,
                  direction: 2),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyQuizScreen(
                        quizList: sportSet,
                        quizName: 'Sport',
                      );
                    }));
                  },
                  subjectName: "Sport",
                  iconPath: MyIcons.bookStack,
                  questionsCount: sportSet.length,
                  gradientColors: MyColors.greenBar,
                  direction: 1),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyQuizScreen(
                        quizList: sportSet,
                        quizName: 'Biology',
                      );
                    }));
                  },
                  subjectName: "Biology",
                  iconPath: MyIcons.bookStack,
                  questionsCount: sportSet.length,
                  gradientColors: MyColors.purpleBar,
                  direction: 2),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyQuizScreen(
                        quizList: sportSet,
                        quizName: 'Science',
                      );
                    }));
                  },
                  subjectName: "Science",
                  iconPath: MyIcons.bookStack,
                  questionsCount: sportSet.length,
                  gradientColors: MyColors.yellowBar,
                  direction: 1),
            ],
          ),
        ),
      ),
    );
  }
}
