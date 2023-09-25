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
                label:Text("Masukkan Key"),
              ),
            ),
            TextField(
              controller: isi,
              decoration: const InputDecoration(
                label:Text("Masukkan Isi"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                dialogController.tambahMap(key.text,isi.text);
              },
              child: Text("Submit"),
            ),
            Obx(() =>
                ListView.builder(
                    shrinkWrap: true,
                    itemCount:dialogController.dataKey.length,
                    itemBuilder:(context,index){
                      String namaKey = dialogController.dataKey.keys.elementAt(index);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${namaKey}"),
                          Text("${dialogController.dataKey[namaKey]}")
                        ],
                      );
                    })
            ),
          ],
        ),
      ),
    );
  }
}
