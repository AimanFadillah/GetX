import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dialog_controller.dart';

class UpdateKelas extends StatelessWidget {
  const UpdateKelas({super.key});

  @override
  Widget build(BuildContext context) {
    DialogController dialogController = DialogController();
    TextEditingController defaultvalue = TextEditingController(text: dialogController.textName.value);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child:Column(
          children: [
            TextField(
              controller: defaultvalue,
              decoration:const InputDecoration(
                label:Text("Ganti Kelas"),
              ),
              onSubmitted: (isi) {
                dialogController.updateName(isi);
                Get.toNamed("/snack");
              },
            ),

          ],
        ),
      ),
    );
  }
}
