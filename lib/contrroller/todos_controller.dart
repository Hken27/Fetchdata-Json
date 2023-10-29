import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../model/api_model.dart';

class TodosController extends GetxController {
  final count = 0.obs;

  Future<ApiModel> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return ApiModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
