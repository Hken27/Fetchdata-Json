import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contrroller/todos_controller.dart';
import '../model/api_model.dart';

class TodosView extends StatefulWidget {
  const TodosView({Key? key}) : super(key: key);
  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  final TodosController controller = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<ApiModel>(
          future: controller.fetchTodos(),
          builder: (context, snapshot) {
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            );
            const SizedBox(height: 20);
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}
