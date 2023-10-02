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
        title: const Text("Sekolah",style: TextStyle(color: Colors.white),),
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
                    TextButton(onPressed: () => Get.toNamed("/update"), child:const Text("Edit Kelas")),
                    TextButton(onPressed: () => Get.toNamed("/list"), child:const Text("Tambahkan Siwa")),
                    TextButton(onPressed: () => Get.toNamed("/keyView"), child:const Text("Tambahkan Matapelajaran")),
                  ],
                ),
              )
            );
          },icon:const Icon(Icons.ac_unit_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.purple,
                child:Text(dialogController.textName.value,textAlign: TextAlign.center,style:const TextStyle(color: Colors.white,fontSize: 20)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                color: Colors.yellow,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text("Jumlah Siswa : ${dialogController.angka}")),
                    Row(
                      children: [
                        IconButton(onPressed: () {dialogController.addAngka();}, icon: const Icon(Icons.add)),
                        IconButton(onPressed: () {dialogController.removeAngka();}, icon: const Icon(Icons.remove)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                color: Colors.yellow,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(dialogController.tog.value ? "Closes" : "Opened")),
                    Obx(() => Switch(
                        value: dialogController.tog.value,
                        activeColor: dialogController.tog.value == true ? Colors.green : Colors.red,
                        inactiveThumbColor: Colors.red,
                        onChanged: (value) => dialogController.setTog(value)
                    ))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                color: Colors.purple,
                child:const Text("Nama Siswa",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                color: Colors.yellow,
                child:Obx(() =>
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount:dialogController.dataSiswa.length,
                        itemBuilder:(context,index) => Text(dialogController.dataSiswa[index],style:const TextStyle(fontSize: 16))
                    )
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.purple,
                child:const Text("Mata Pelajaran",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  color: Colors.yellow,
                  child:Obx(() =>
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount:dialogController.dataKey.length,
                          itemBuilder:(context,index) {
                            String namaKey = dialogController.dataKey.keys.elementAt(index);
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${namaKey}",style:const TextStyle(fontSize: 16)),
                                Text("${dialogController.dataKey[namaKey]}",style:const TextStyle(fontSize: 16))
                              ],
                            );
                          })
                      )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
