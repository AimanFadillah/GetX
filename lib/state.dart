import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/obx.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management",style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Obx() ));
              },
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.green,
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
                child: const Center(child:Text("GetBuilder",style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.push(context,MaterialPageRoute(builder: (context) => const Obx() ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration:const BoxDecoration(
                    color: Colors.green,
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
                child: const Center(child:Text("Obx",style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration:const BoxDecoration(
                  color: Colors.green,
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
              child: const Center(child:Text("SUM XY",style: TextStyle(color: Colors.white,fontSize: 20))),
            )
          ],
        ),
      ),
    );
  }
}
