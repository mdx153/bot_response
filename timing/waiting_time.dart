class BotClock {
  
  //Tempo de espera para cada ação
  Future clockBot(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }
 
  //Tempo de funcionamento do bot.
  Stream botStream(int interval, [int? maxCount]) async*{
    int iterator = 1;

    while (iterator != maxCount) {
      await Future.delayed(Duration(seconds: interval));
      yield iterator++;
    }

    print('MirajaneBOT finalizado.');
  }
}