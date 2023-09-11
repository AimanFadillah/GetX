import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/controller/obx_controller.dart';
import 'package:get/get.dart';

class Obx extends StatefulWidget {
  const Obx({super.key});

  @override
  State<Obx> createState() => _ObxState();
}

class _ObxState extends State<Obx> {

  @override
  Widget build(BuildContext context) {
    ObxController controller = Get.put(ObxController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetBuilder",style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
              GetBuilder<ObxController>(builder: (obxController) {
                return Container(
                  width:MediaQuery.of(context).size.width,
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child:  Center(child:Text(obxController.x.toString(),style:const TextStyle(color: Colors.white,fontSize: 20))),
                );
              }),
              GetBuilder<ObxController>(builder: (obxController) {
                return GestureDetector(
                  onTap: () {
                    obxController.incrementX();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration:const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0,3)
                          )
                        ]
                    ),
                    child: const Center(child:Text("Increment",style: TextStyle(color: Colors.white,fontSize: 20))),
                  ),
                );
              }),
            GetBuilder<ObxController>(builder: (obxController) {
              return GestureDetector(
                onTap: () {
                  obxController.decrementX();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration:const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0,3)
                        )
                      ]
                  ),
                  child: const Center(child:Text("Decrement",style: TextStyle(color: Colors.white,fontSize: 20))),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
