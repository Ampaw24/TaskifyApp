import 'package:flutter/foundation.dart';

class DataClass extends ChangeNotifier {
  String data = 'Hello  is my name';
  
  void changeData(var message) {
    data = message;
    notifyListeners();
  }
}
