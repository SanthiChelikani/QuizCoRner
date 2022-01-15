
import 'package:get/state_manager.dart';


class Quizresult extends GetxController{
  int point = 0;
  int totalscore = 0;

  @override
  void onInit() {
    totalscore = 0 ;
    point = 0 ;
    super.onInit();
  }

  void updateMarks(bool? istrue) {
    if (istrue!) {
      point++;
    }
    totalscore++;
  }

}