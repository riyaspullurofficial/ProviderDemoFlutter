import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  String text = 'Riyas';
  String text2 = 'RRRRRRRR';
  String text3 = 'ABCDEF';

  void changeData1() {
    text = 'screen demo1 data';
    notifyListeners();
  }

  void changeData2() {
    text2 = 'screen demo2 data';
    notifyListeners();
  }

  void changeData3() {
    text3 = 'screen demo2 data';
    notifyListeners();
  }
}
