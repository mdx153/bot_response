import '../utils/questions_util.dart';

class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String mirajaneBOT = 'MirajaneBOT:\n';
  UtilQuestions questions = UtilQuestions();

  GoodManners(this.question);

  bool isThisManners() {
    if(questions.manners.contains(question)){
      isThisGoodManners = true;
    }
    
    return isThisGoodManners;
  }

  goodManners(){
    if(question.contains('Bom dia') || question.contains('bom dia')){
      print('$mirajaneBOT Bom dia, que ótimo dia.');
    }else if(question.contains('Boa tarde') || question.contains('boa tarde')){
      print('$mirajaneBOT Boa tarde, que ótima tarde.');
    }else if(question.contains('Boa noite') || question.contains('boa noite')){
      print('$mirajaneBOT Boa noite, que ótima noite, não é mesmo?');
    }else if(question.contains('oi') || question.contains('ola')){
      print('$mirajaneBOT Muito prazer!');
    }else if(question.contains('obrigado') || question.contains('obrigada')){
      print('$mirajaneBOT De nada, fique a vontade :)');
    }
  }
}