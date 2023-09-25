import 'package:flutter/material.dart';
import 'package:getx/beranda.dart';
import 'package:get/get.dart';
import 'package:getx/keyView.dart';
import 'package:getx/list.dart';
import 'package:getx/snackbar.dart';
import 'package:getx/state.dart';
import 'package:getx/tambahKurang.dart';
import 'package:getx/updateKelas.dart';

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
        GetPage(name: "/snack", page: () => const Snack()),
        GetPage(name: "/state", page: () => const StateManagement()),
        GetPage(name: "/tambah-kurang", page: () => const TambahKurang()),
        GetPage(name: "/list", page: () => const ListSiswa()),
        GetPage(name: "/update", page: () => const UpdateKelas() ),
        GetPage(name: "/keyView", page: () => const KeyView()),
      ],
      home: const Beranda(),
    );
  }
}

