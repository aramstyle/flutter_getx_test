import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControlWithGetx extends GetxController {
  int count = 0;
  void increase(){
    count++;
    update();
  }
}