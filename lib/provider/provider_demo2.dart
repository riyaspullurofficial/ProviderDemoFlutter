
import 'package:flutter/material.dart';

class ProviderDemo2 with ChangeNotifier {
  String text = 'sdsdsdsd';
  String text2 = 'wwwwww';
  String text3 = 'AAAAAAAAAAAA';

  void changeData1() {
    text = 'ProviderDemo2 screen demo1 data';
    notifyListeners();
  }

  void changeData2() {
    text2 = 'ProviderDemo2 screen demo2 data';
    notifyListeners();
  }

  void changeData3() {
    text3 = 'ProviderDemo2 screen demo2 data';
    notifyListeners();
  }
}
