import 'package:get/get.dart';
import '../../contrroller/todos_controller.dart';

class TodosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodosController>(
      () => TodosController(),
    );
  }
}
