import 'package:get/get.dart';

// TODO: 수정해야되요 그렇죠?
class CountControlWithGetx extends GetxController {
  int count = 0;
  void increase(){
    count++;
    update();
  }
}