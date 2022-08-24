import '../model/quiz_data.dart';

class GetFakeQuestionData {
  static List<QuestionItem> englishA1A2() {
    List<QuestionItem> data = [];
    // 1
    data.add(QuestionItem(
      question: "We _____ to the city museum three days ago.",
      variant1: "A. can go",
      variant2: "B. went",
      variant3: "C. go",
      variant4: "D. are going",
      trueAnswer: "B",
    ));

    // 2
    data.add(QuestionItem(
      question: "Victor _____ some bad news from Ted yesterday and _____ sad.",
      variant1: "A. is hearing / is becoming",
      variant2: "B. hears / becomes",
      variant3: "C. heard / became",
      variant4: "D. can hear / become",
      trueAnswer: "C",
    ));

    // 3
    data.add(QuestionItem(
      question: "_____ she _____ your books back last week?",
      variant1: "A. Can / bring",
      variant2: "B. Did / bring",
      variant3: "C. Does / bring",
      variant4: "D. Is / bringing",
      trueAnswer: "B",
    ));

    // 4
    data.add(QuestionItem(
      question:
      "They often _____ questions in meetings. They just make presentations.",
      variant1: "A. didn't answer",
      variant2: "B. don't answer",
      variant3: "C. aren't answering",
      variant4: "D. can answer",
      trueAnswer: "B",
    ));

    // 5
    data.add(QuestionItem(
      question: "I _____ my house last week, but it _____ dirty again now.",
      variant1: "A. cleaned / is",
      variant2: "B. clean / was",
      variant3: "C. am cleaning / is",
      variant4: "D. cleaned / was",
      trueAnswer: "A",
    ));

    // 6
    data.add(QuestionItem(
        question: "Basil _____ an operation on his stomach last year and now he _____ no problem with it.",
        variant1: "A. can have / had",
        variant2: "B. had / has",
        variant3: "C. is having / can have",
        variant4: "D. has / had",
        trueAnswer: "B"
    ));

    // 7
    data.add(QuestionItem(
      question: "I _____ the window and _____ a deep breath before the exam yesterday.",
      variant1: "A. can open / can take",
      variant2: "B. open / take",
      variant3: "C. am opening / am taking",
      variant4: "D. opened / took",
      trueAnswer: "D",
    ));

    // 8
    data.add(QuestionItem(
        question: "He _____ fishing three times a week because he _____ spending time by the lake.",
        variant1: "A. went / love",
        variant2: "B. goes / loves",
        variant3: "C. is going / loved",
        variant4: "D. goes / is loving",
        trueAnswer: "B"
    ));

    // 9
    data.add(QuestionItem(
        question: "Nina _____ in the park alone yesterday morning and she _____ a book.",
        variant1: "A. can sit / reads",
        variant2: "B. sits / reads",
        variant3: "C. is sitting / is reading",
        variant4: "D. sat / read",
        trueAnswer: "D"
    ));

    // 10
    data.add(QuestionItem(
        question: "The twins _____ an experiment in the lab these days, so they _____ usually busy.",
        variant1: "A. did / were",
        variant2: "B. are doing / are",
        variant3: "C. can do / were",
        variant4: "D. do / are",
        trueAnswer: "B"
    ));
    return data;
  }
}
