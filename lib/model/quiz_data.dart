class QuestionItem {
  QuestionItem(
      {required this.question,
        required this.variant1,
        required this.variant2,
        required this.variant3,
        required this.variant4,
        required this.trueAnswer,
        this.imagePath,
      }
      );

  String question;
  String variant1;
  String variant2;
  String variant3;
  String variant4;
  String trueAnswer;
  String? imagePath;
}
