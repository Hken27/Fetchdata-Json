import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_praktikum/view/home_view.dart';
import 'package:tugas_praktikum/view/todos_view.dart';

void main() {
  runApp(
    GetMaterialApp(
    routes: {
      '/': (context) => const HomeView(), // Rute awal
      '/second': (context) => const TodosView(), // Rute kedua
    },
  )

      // GetMaterialApp(
      //   title: "Application",
      //   initialRoute: Pages.INITIAL,
      //   getPages: Pages.routes,
      // ),
      );
}
