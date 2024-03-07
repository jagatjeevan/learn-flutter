import './question.dart';

class QuestionBank {
  int questionIndex = 0;
  bool isAllQuestionAnswered = false;

  final List<Question> _questionBank = [
    Question(
      "In school, Albert Einstein failed most of the subjects, except for physics and math.",
      true,
    ),
    Question(
      "The first song ever sung in the space was “Happy Birthday.",
      true,
    ),
    Question(
      "The first country in the world to use postcards was the United States of America.",
      false,
    ),
    Question(
      'You can lead a cow down stairs but not up stairs.',
      false,
    ),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  int lengthOfQuestions() {
    return _questionBank.length;
  }

  void nextQuestion() {
    if (questionIndex < lengthOfQuestions()) {
      questionIndex += 1;
    } else {
      isAllQuestionAnswered = true;
    }
  }

  String getQuestion() {
    if (questionIndex >= lengthOfQuestions()) return "All question answered :)";
    return _questionBank[questionIndex].questionText;
  }

  bool isAnswerCorrect(bool answerSent) {
    if (_questionBank[questionIndex].answer != answerSent) return false;
    return true;
  }
}
