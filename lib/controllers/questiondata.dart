import 'package:get/get.dart';
import 'package:isro_quiz/datafromApi/Questions/Question.dart';

class Questiondata extends GetxController{
  var questionList = <Question>[];

  @override
  void onInit() {
    questionList = generateQuestions();
    for(int i=0; i<120; i++){
      print("${i+1} and ${questionList[i].level} and ${questionList[i].sub}");
    }
    super.onInit();
  }
}

String diff(int num) {
  if (num % 12 == 0 || num % 12 == 1 || num % 12 == 2 || num % 12 == 3 ) {
    return "Easy";
  } else if (num % 12 == 4 || num % 12 == 5 || num % 12 == 6 || num % 12 == 7) {
    return "Mid";
  } else {
    return "Hard";
  }
}

String top(int num) {
  if (num % 12 == 0 || num % 12 == 1 || num % 12 == 2 || num % 12 == 3) {
    return "Subject 1";
  } else if (num % 12 == 4 || num % 12 == 5 || num % 12 == 6 || num % 12 == 7) {
    return "Subject 2";
  } else if (num % 12 == 2 || num % 12 == 6 || num % 12 == 10) {
    return "Subject 3";
  } else {
    return "Subject 4";
  }
}

List<Question> generateQuestions() {
  List<int> a = List<int>.generate(120, (int index) => index);

  return a.map((i) {
    Question que = Question(
        level: diff(i),
        option_1: false,
        option_2: false,
        option_3: true,
        option_4: false,
        question: " Question in "
            "${top(i)} ."
            "Choose one correct option.}",
        sub: top(i));
    return que;
  }).toList();
}
