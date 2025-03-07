import 'package:doc_creator/03_model/app_config.dart';

class InitialScreenController {
  static InitialScreenController instance = InitialScreenController();

  bool appIsDemo() {
    if (AppConfig.version == AppConfig.demoVersion) {
      return true;
    } else {
      return false;
    }
  }

  String getDurationRemainderDemo() {
    Duration remainderTime = AppConfig.getDurationRemainderDemo();

    if (remainderTime.isNegative) {
      return "O período da versão demo expirou.";
    } else {
      int days = remainderTime.inDays;
      int hours = remainderTime.inHours;
      int minutes = remainderTime.inMinutes.remainder(60);
      return "Tempo restante da versão demo: $days dias $hours horas e $minutes minutos";
    }
  }

  bool demoExpired() {
    Duration remainderTime = AppConfig.getDurationRemainderDemo();

    if (remainderTime.isNegative) {
      return true;
    } else {
      return false;
    }
  }
}
