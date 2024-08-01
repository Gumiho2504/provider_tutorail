import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier {
  int _x = 0;
  int get x => _x;

  void incrementX() {
    _x++;
    notifyListeners(); // update() or setState()
  }

  void decrementX() {
    _x++;
    notifyListeners(); // update() or setState()
  }
}
