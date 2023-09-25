import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/controller/dialog_controller.dart';
import 'package:get/get.dart';

class ListSiswa extends StatelessWidget {
  const ListSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    DialogController dialogController = DialogController();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child:Column(
          children: [
            TextField(
              decoration:const InputDecoration(
                label:Text("Masukkan Siswa"),
              ),
              onSubmitted: (isi) {
                dialogController.tambahSiswa(isi);
                Get.toNamed("/snack");
              },
            ),

          ],
        ),
      ),
    );
  }
}
