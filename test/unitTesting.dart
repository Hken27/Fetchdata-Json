// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart' as http;
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:tugas_praktikum/contrroller/todos_controller.dart';
// import 'package:tugas_praktikum/model/api_model.dart';

// import 'unitTesting.mocks.dart';

// // Generate a MockClient using the Mockito package.
// // Create new instances of this class in each test.
// @GenerateMocks([http.Client])
// void main() {

// // Initialize ApiService and MockClient
//   late MockClient mockClient;
//   late TodosController todosController;
//   setUp(() {
// // Set up MockClient and ApiService for each test
//     mockClient = MockClient();
//     todosController = TodosController();
//   });
//   group('TodosController', () {
//     test('fetchArticles returns a list of articles if response is successful',
//         () async {
// // Mock the HTTP response for successful case
//       when(mockClient
//               .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5')))
//           .thenAnswer((_) async =>
//               http.Response('{"articles": []}', 200)); // Mock the HTTP response
//       const result = TodosController;
// // Expect the fetched data to be a list of Article objects
//       expect(result, isA<List<ApiModel>>());
//     });
// //     test('fetchArticles returns an empty list if response fails', () async {
// // // Mock the HTTP response for response failure
// //       when(mockClient.get(Uri.parse(
// //               '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey')))
// //           .thenAnswer((_) async =>
// //               http.Response('Server error', 500)); // Mock the HTTP response
// //       final articles = await apiService.fetchArticles();
// // // Expect the fetched data to be an empty list
// //       expect(articles, isA<List<Article>>());
// //     });
// //     test('fetchArticles returns an empty list if an error occurs', () async {
// // // Mock an error response
// //       when(mockClient.get(Uri.parse(
// //               '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey')))
// //           .thenThrow(Exception('Test error')); // Mock an error
// //       final articles = await apiService.fetchArticles();
// // // Expect the fetched data to be an empty list
// //       expect(articles, isA<List<Article>>());
// //     });

//   });
// }

import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_praktikum/model/api_model.dart';

void main() {
  group('ApiModel', () {
    test('fromJson() returns ApiModel instance', () {
      final Map<String, dynamic> jsonData = {
        "userId": 1,
        "id": 1,
        "title": "test title",
        "completed": false,
      };

      final apiModel = ApiModel.fromJson(jsonData);

      expect(apiModel, isA<ApiModel>());
      expect(apiModel.userId, equals(1));
      expect(apiModel.id, equals(1));
      expect(apiModel.title, equals("test title"));
      expect(apiModel.completed, isFalse);
    });

    test('toJson() returns Map<String, dynamic>', () {
      final apiModel = ApiModel(
        userId: 1,
        id: 1,
        title: "test title",
        completed: false,
      );

      final jsonData = apiModel.toJson();

      expect(jsonData, isA<Map<String, dynamic>>());
      expect(jsonData["userId"], equals(1));
      expect(jsonData["id"], equals(1));
      expect(jsonData["title"], equals("test title"));
      expect(jsonData["completed"], isFalse);
    });
  });
}
