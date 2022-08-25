
import 'package:my_quiz_app/model/quiz_data.dart';

class QuizRepository {
  static List<QuizData> englishA1A2() {
    List<QuizData> data = [];
    // 1
    data.add(QuizData(
      questionText: "We _____ to the city museum three days ago.",
      v1: "A. can go",
      v2: "B. went",
      v3: "C. go",
      v4: "D. are going",
      trueAnswer: "B",
    ));

    // 2
    data.add(QuizData(
      questionText:
          "Victor _____ some bad news from Ted yesterday and _____ sad.",
      v1: "A. is hearing / is becoming",
      v2: "B. hears / becomes",
      v3: "C. heard / became",
      v4: "D. can hear / become",
      trueAnswer: "C",
    ));

    // 3
    data.add(QuizData(
      questionText: "_____ she _____ your books back last week?",
      v1: "A. Can / bring",
      v2: "B. Did / bring",
      v3: "C. Does / bring",
      v4: "D. Is / bringing",
      trueAnswer: "B",
    ));

    // 4
    data.add(QuizData(
      questionText:
          "They often _____ questions in meetings. They just make presentations.",
      v1: "A. didn't answer",
      v2: "B. don't answer",
      v3: "C. aren't answering",
      v4: "D. can answer",
      trueAnswer: "B",
    ));

    // 5
    data.add(QuizData(
      questionText: "I _____ my house last week, but it _____ dirty again now.",
      v1: "A. cleaned / is",
      v2: "B. clean / was",
      v3: "C. am cleaning / is",
      v4: "D. cleaned / was",
      trueAnswer: "A",
    ));

    // 6
    data.add(QuizData(
        questionText:
            "Basil _____ an operation on his stomach last year and now he _____ no problem with it.",
        v1: "A. can have / had",
        v2: "B. had / has",
        v3: "C. is having / can have",
        v4: "D. has / had",
        trueAnswer: "B"));

    // 7
    data.add(QuizData(
      questionText:
          "I _____ the window and _____ a deep breath before the exam yesterday.",
      v1: "A. can open / can take",
      v2: "B. open / take",
      v3: "C. am opening / am taking",
      v4: "D. opened / took",
      trueAnswer: "D",
    ));

    // 8
    data.add(QuizData(
        questionText:
            "He _____ fishing three times a week because he _____ spending time by the lake.",
        v1: "A. went / love",
        v2: "B. goes / loves",
        v3: "C. is going / loved",
        v4: "D. goes / is loving",
        trueAnswer: "B"));

    // 9
    data.add(QuizData(
        questionText:
            "Nina _____ in the park alone yesterday morning and she _____ a book.",
        v1: "A. can sit / reads",
        v2: "B. sits / reads",
        v3: "C. is sitting / is reading",
        v4: "D. sat / read",
        trueAnswer: "D"));

    // 10
    data.add(QuizData(
        questionText:
            "The twins _____ an experiment in the lab these days, so they _____ usually busy.",
        v1: "A. did / were",
        v2: "B. are doing / are",
        v3: "C. can do / were",
        v4: "D. do / are",
        trueAnswer: "B"));

    return data;
  }

  static List<QuizData> mathSet() {
    List<QuizData> test = [];
    test.add(QuizData(
      questionText: "Simmetriya o'qi tenglamasini belgilang",
      v1: "A. x = x0",
      v2: "B. x = 0",
      v3: "C. x = a^2 + b^2",
      v4: "D. x = 1",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      questionText:
          "Cheksiz kamayuvchi geometrik progressiya bo'lishlik sharti?",
      v1: "A. |q| < 1",
      v2: "B. q > 0",
      v3: "C. |q| < 0",
      v4: "D. Aniqlab bo'lmaydi",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      questionText:
          "Vatarga perpendikulyar diametr shu vatarni va unga tiralgan yoyni teng ______ bo'ladi.",
      v1: "A. uchga",
      v2: "B. ikkiga",
      v3: "C. to'rt bo'lakka",
      v4: "D. 5 va undan ortiqqa",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      questionText:
          "Ko'pburchakning ichki burchaklar yig'indisi qanday topiladi? (formulasi)",
      v1: "A. n - 3 ",
      v2: "B. n * (n - 3) / 2",
      v3: "C. 180 * (n - 2)",
      v4: "D. Har doim 360 gradus bo'ladi",
      trueAnswer: "C",
    ));

    test.add(QuizData(
      questionText:
          "Aylanada olingan n ta nuqtadan nechta kesma o'tkazish mumkin?",
      v1: "A. n * (n - 1) / 2  ta",
      v2: "B. n - 1  ta ",
      v3: "C. cheksiz ta kesma olish mumkin",
      v4: "D. 5 va undan ortiq",
      trueAnswer: "A",
    ));
    return test;
  }

  static List<QuizData> sportSet() {
    List<QuizData> test = [];
    test.add(QuizData(
      questionText: "Which team is the latest champion in basketball game",
      v1: "A. Golden State Warriors",
      v2: "B. Boston Celtics",
      v3: "C. Phoe Suns",
      v4: "D. Dallas Mave",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      questionText:
          "How many goals Ronaldo scored for Real Madrid in Champions League?",
      v1: "A. 100",
      v2: "B. 105",
      v3: "C. 200",
      v4: "D. 180",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      questionText: "From which year Benzema has been playing for Real Madrid?",
      v1: "A. Since 2000",
      v2: "B. Since 2002",
      v3: "C. Since 2007",
      v4: "D. Since 2009",
      trueAnswer: "D",
    ));

    test.add(QuizData(
      questionText: "How old is Messi?",
      v1: "A. 37 years old",
      v2: "B. 35 years old",
      v3: "C. 33 years old",
      v4: "D. 30 years old",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      questionText: "To which team Mane want to play in these days?",
      v1: "A. Of Course, Liverpool",
      v2: "B. Bayern Munich",
      v3: "C. Real Madrid",
      v4: "D. I don't know",
      trueAnswer: "B",
    ));
    return test;
  }
}
