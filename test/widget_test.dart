import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tugas_praktikum/contrroller/home_controller.dart';
import 'package:tugas_praktikum/view/home_view.dart';
import 'package:tugas_praktikum/view/todos_view.dart';

void main() {
  testWidgets('HomeView UI Test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      GetMaterialApp(
        home: const HomeView(),
        initialBinding: BindingsBuilder(() {
          Get.put<HomeController>(HomeController());
        }),
      ),
    );

    // Verify if the title is present in the app bar.
    expect(find.text('Halaman Satu'), findsOneWidget);

    // Verify if the ElevatedButton is present.
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Tap the ElevatedButton and trigger navigation.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify if the TodosView is pushed after tapping the ElevatedButton.
    expect(find.byType(TodosView), findsOneWidget);
  });
}
