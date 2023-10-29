import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_praktikum/view/todos_view.dart';
import '../contrroller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Ini adalah fungsi yang akan dipanggil saat tombol ditekan.
                // Anda dapat menambahkan perintah navigasi di sini.
                Get.to(const TodosView());
              },
              child: const Text('Go to Second View'),
            ),
          ],
        ),
      ),
    );
  }
}

