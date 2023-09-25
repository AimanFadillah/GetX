import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialogController extends GetxController {

  static final DialogController _instance = DialogController._internal();

  factory DialogController() {
    return _instance;
  }

  DialogController._internal();

  TextEditingController editingController = TextEditingController();

  RxString textName = RxString("XII RPL 2");
  RxInt angka = RxInt(25);
  RxList dataSiswa = RxList(["naruto","sasuke"]);
  RxMap dataKey = RxMap({"001":"pai"});
  //

  void tambahSiswa (String nama) {
      dataSiswa.add(nama);
  }

  void tambahMap (String key,String nama){
      dataKey["${key}"] = nama;
  }

  void updateName (String name) {
    textName.value = name;
  }

  void addAngka () {
    if(tog.value) return;
    if(angka.value == 35){
      tog(true);
      return;
    }
    angka.value++;
  }

  void removeAngka () {
    if(tog.value) return;
    if(angka.value - 1 <= 0) return;
    angka.value--;
  }

  RxBool tog = RxBool(false);
  void setTog (bool toggle) {
    tog(toggle);
  }


}