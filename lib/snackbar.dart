import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dialog_controller.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    DialogController dialogController = DialogController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {
            Get.bottomSheet(
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: () => Get.toNamed("/state"), child:const Text("State")),
                    TextButton(onPressed: () => Get.toNamed("/tambah-kurang"), child:const Text("Tambah Kurang")),
                    TextButton(onPressed: () => Get.toNamed("/list"), child:const Text("list Siwa")),
                    TextButton(onPressed: () => Get.toNamed("/keyView"), child:const Text("Key input")),
                  ],
                ),
              )
            );
          },icon:const Icon(Icons.ac_unit_outlined))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.all(10),
            child: TextField(
              controller: dialogController.editingController,
              decoration:const InputDecoration(
                  label:Text("Masukkan nama"),
              ),
              onSubmitted: (isi) {
                Get.snackbar("Nama Berubah jadi",dialogController.updateName(isi),backgroundColor: Colors.purple,colorText: Colors.white);
                // Get.defaultDialog(
                //   title: "Nama",
                //   middleText: dialogController.updateName(isi),
                //   onConfirm: () {
                //     // Get.to(() => const Bentar(),arguments: dialogController.editingController.text);
                //   }
                // );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Obx(() => Text(dialogController.textName.value,style:TextStyle(
              color: dialogController.tog.value == true ? Colors.green : Colors.red
            ))),
          ),
          Obx(() => Switch(
              value: dialogController.tog.value,
              activeColor: dialogController.tog.value == true ? Colors.green : Colors.red,
              inactiveThumbColor: Colors.red,
              onChanged: (value) => dialogController.setTog(value)
          ))
        ],
      ),
    );
  }
}
