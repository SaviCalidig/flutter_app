import 'package:flutter/cupertino.dart';

class timerinfoincrement extends ChangeNotifier{
  int remainingtime=60;
  int getRemainitime () => remainingtime;
  UpdatereamingTime(){
    remainingtime++;
    notifyListeners();
  }

}