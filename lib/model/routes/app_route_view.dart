import 'package:get/get.dart';
import '../../view/home_view.dart';
import '../../view/todos_view.dart';
import '../../view/widget/home_binding_view.dart';
import '../../view/widget/todos_binding_view.dart';
part 'app_routes.dart';

class Pages {
  Pages._();

  // ignore: constant_identifier_names
  static const INITIAL = AppRoutesView.TODOS;

  static final routes = [
    GetPage(
      name: _AppPath.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _AppPath.TODOS,
      page: () => const TodosView(),
      binding: TodosBinding(),
    ),
  ];
}
