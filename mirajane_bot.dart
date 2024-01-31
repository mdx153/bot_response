import 'dart:io';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';
import 'utils/questions_util.dart';
import 'dart:async';

void main() async{
  String mirajaneBOT = 'MirajaneBOT';
  String userQuestion = '';
  var controllerBot = true;
  UtilQuestions questions = UtilQuestions();

  print('\n\t Iniciando o $mirajaneBOT, aguarde...\n');
  
  var myStream = BotClock().botStream(1, 60);
  StreamSubscription mySubscriber = myStream.listen((event) {
    print('\t $mirajaneBOT está ativado a $event segundos.\n');
  }, onDone: () {
    print('$mirajaneBOT está finalizando faça a ultima pergunta.');
    controllerBot = false;
  });

  await BotClock().clockBot(2);
  print('$mirajaneBOT:\nOi, Como posso ajudar?\n');
  
  do 
  {
    print('Você: ');
    userQuestion = stdin.readLineSync().toString().toLowerCase();
    
    print('\n\tProcessando pergunta, aguarde..\n');
    await BotClock().clockBot(2);

    if(questions.finish.contains(userQuestion)){
      controllerBot = false;
      print('$mirajaneBOT:\nAté a proxima');
    }else if(TimeQuestions(userQuestion).isThisTime()){
      await BotClock().clockBot(2);
      TimeQuestions(userQuestion).timeQuestion();
    }else{
      await BotClock().clockBot(2);

      print('$mirajaneBOT:\n Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print('$mirajaneBOT:\n Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (controllerBot);
  
  if(!controllerBot){
     mySubscriber.cancel();
  }

  print('\n\t Encerrando $mirajaneBOT \n');
}