import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialogController extends GetxController {

  TextEditingController editingController = TextEditingController();

  // Rext
  RxString textName = RxString("");
  RxBool tog = RxBool(true);
  RxInt angka = RxInt(0);
  RxList dataSiswa = RxList([]);
  RxMap dataKey = RxMap({});
  //

  void tambahSiswa (String nama) {
      dataSiswa.add(nama);
  }

  void tambahMap (String key,String nama){
      dataKey["${key}"] = nama;
  }

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
  }


}