import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/controller/dialog_controller.dart';
import 'package:get/get.dart';

class TambahKurang extends StatelessWidget {
  const TambahKurang({super.key});

  @override
  Widget build(BuildContext context) {
    DialogController dialogController = DialogController();
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () => dialogController.addAngka(),icon: const Icon(Icons.add)),
            Obx(() => Text(dialogController.angka.value.toString())),
            IconButton(onPressed: () => dialogController.removeAngka(),icon: const Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
