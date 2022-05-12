import 'package:flutter/material.dart';

class CountControlWithProvider extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}