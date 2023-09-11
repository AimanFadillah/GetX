import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/state.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://res.cloudinary.com/strapi/image/upload/v1621261454/logo_vgoldp.png",
                  width: 100,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child:const Text("GetX",style: TextStyle(color: Colors.purple,fontSize:50),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => const StateManagement() ));
                      Get.to(() => const StateManagement());
                  },
                  child: Container(
                    width: 180,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2, // Radius penyebaran bayangan
                          blurRadius: 7, // Radius blur bayangan
                          offset: Offset(0, 3), // Posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: const Center(child: Text("Obx Getbuilder",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 180,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2, // Radius penyebaran bayangan
                        blurRadius: 7, // Radius blur bayangan
                        offset: Offset(0, 3), // Posisi bayangan (x, y)
                      ),
                    ],
                    color: Colors.orange,
                  ),
                  child: const Center(child: Text("Snackbar Dialog ButtomSheet",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                  ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2, // Radius penyebaran bayangan
                        blurRadius: 7, // Radius blur bayangan
                        offset: Offset(0, 3), // Posisi bayangan (x, y)
                      ),
                    ],
                    color: Colors.blueAccent,
                  ),
                  child: const Center(child: Text("Named Navigation",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ))),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => const StateManagement() ));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: 180,
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2, // Radius penyebaran bayangan
                          blurRadius: 7, // Radius blur bayangan
                          offset: Offset(0, 3), // Posisi bayangan (x, y)
                        ),
                      ],
                      color: Colors.green,
                    ),
                    child: const Center(child: Text("Dependecy Management",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
