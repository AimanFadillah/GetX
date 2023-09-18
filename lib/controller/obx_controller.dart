import 'package:get/get.dart';

class ObxController extends GetxController{
  int _x = 10;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  void incrementY () {
    _y.value++;
    print(_y);
  }

  void decrementY () {
    _y.value--;
    print(_y);
  }

  void incrementX() {
    _x++;
    update();
  }

  void decrementX() {
    _x--;
    update();
  }



}