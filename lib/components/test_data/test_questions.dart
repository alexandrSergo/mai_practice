import 'package:mai_practice/features/support/models/question_model.dart';

final testQuestions = [
  Question(
    question: "Вопрос 1".toUpperCase(), 
    answers: ["Ответ 1", "Ответ 2"].map((e) => e.toUpperCase()).toList()
  ),
  Question(
    question: "Вопрос 2".toUpperCase(), 
    answers: ["Ответ 1"].map((e) => e.toUpperCase()).toList()
  ),
  Question(
    question: "Вопрос 3".toUpperCase(), 
    answers: ["Ответ 1", "Ответ 2"].map((e) => e.toUpperCase()).toList()
  ),
  Question(
    question: "Вопрос 4".toUpperCase(), 
    answers: ["Ответ 1"].map((e) => e.toUpperCase()).toList()
  ),
  Question(
    question: "Вопрос 5".toUpperCase(), 
    answers: ["Ответ 1", "Ответ 2"].map((e) => e.toUpperCase()).toList()
  ),
  Question(
    question: "Вопрос 6".toUpperCase(), 
    answers: ["Ответ 1"].map((e) => e.toUpperCase()).toList()
  ),
];