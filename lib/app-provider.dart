import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier {
  int number = 0;
  int number1 = 0;
  AppProvider() {
    sayHello();
  }

  void sayHello() {
    print("hello");
    number += 1;

    notifyListeners();
    number1 += 2;
  }
}
