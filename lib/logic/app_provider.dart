import 'package:flutter/material.dart';

class App_Provider extends ChangeNotifier {
  int selectindex = 0;
  int index = 0;
  int alhamdulillah = -33;
  int allahakbr = -66;
  String title = 'سبحان الله ';

  void sabeh_Counter() {
    selectindex++;
    index++;
    alhamdulillah++;
    allahakbr++;
    if (selectindex >= 0 && selectindex >= 33) {
      title = 'سبحان الله ';
    }
    if (selectindex >= 34 && selectindex <= 66) {
      title = 'الحمد لله';
      index = alhamdulillah;
    }
    if (selectindex >= 67 && selectindex <= 99) {
      title = 'الله اكبر';
      index = allahakbr;
    }
    if (selectindex == 100) {
      index = 0;
      selectindex = 0;
      alhamdulillah = -33;
      allahakbr = -66;
    }
    notifyListeners();
  }
}
