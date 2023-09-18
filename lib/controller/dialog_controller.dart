import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialogController extends GetxController {

  TextEditingController editingController = TextEditingController();

  // Rext
  RxString textName = RxString("");
  RxBool tog = RxBool(true);
  RxInt angka = RxInt(0);

  updateName (String name) {
    textName.value = name;
    return name;
  }

  void addAngka () {
    angka.value++;
  }

  void removeAngka () {
    angka.value--;
  }

  void setTog (bool toggle) {
    tog(toggle);
    print(toggle);
  }


}