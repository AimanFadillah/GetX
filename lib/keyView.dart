import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dialog_controller.dart';

class KeyView extends StatelessWidget {
  const KeyView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController key = TextEditingController();
    TextEditingController isi = TextEditingController();
    DialogController dialogController = Get.put(DialogController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: key,
              decoration: const InputDecoration(
                label:Text("Masukkan Id"),
              ),
            ),
            TextField(
              controller: isi,
              decoration: const InputDecoration(
                label:Text("Masukkan Mata pelajaran"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                dialogController.tambahMap(key.text,isi.text);
                Get.toNamed("/snack");
              },
              child:const Text("Submit"),
            ),

          ],
        ),
      ),
    );
  }
}
