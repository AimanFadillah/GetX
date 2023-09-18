import 'package:flutter/material.dart';
import 'package:getx/beranda.dart';
import 'package:get/get.dart';
import 'package:getx/state.dart';
import 'package:getx/tambahKurang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/state", page: () => const StateManagement()),
        GetPage(name: "/tambah-kurang", page: () => const TambahKurang()),
      ],
      home: const Beranda(),
    );
  }
}

