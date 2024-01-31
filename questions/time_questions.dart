import '../utils/questions_util.dart';
import 'dart:io';

class TimeQuestions{

  String hour = 'Que horas são?';
  String day = 'Que dia é hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String mirajaneBot = 'MirajaneBOT:\n';
  bool isThisATimeQuestion = false;
  UtilQuestions questions = UtilQuestions();

  TimeQuestions(this.question);
  
  bool isThisTime() {
    if(questions.timeWords.contains(question)){
      isThisATimeQuestion = true;
    }

    return isThisATimeQuestion;
  }

  timeQuestion() {

    if (question == hour) {

      String _botAnswer = '$mirajaneBot Opa! são : ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = '$mirajaneBot Opa! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = '$mirajaneBot Opa! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {
      String _botQuestion =
          '$mirajaneBot Não entendi, você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();

      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer =
            '$mirajaneBot Beleza, são : ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {
        String _botAnswer = mirajaneBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {
      String _botQuestion =
          '$mirajaneBot Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();

      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = '$mirajaneBot Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {
        String _botAnswer = '$mirajaneBot Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {
      String _botQuestion =
          '$mirajaneBot Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();

      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = '$mirajaneBot estamos em : ${date.year}';
        print(_botAnswer);
      } else {
        String _botAnswer = '$mirajaneBot Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}