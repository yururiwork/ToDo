import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import 'package:todo/todo_list_controller.dart';
import 'package:todo/todo_list_page.dart';
import 'package:todo/todo_list_provider.dart';
import 'package:todo/todo_list_state.dart';

class MockTodoListStateController extends Mock implements TodoListStateController {}

void main() {
  Widget isEvenTestWidget(StateNotifierProvider<TodoListStateController, TodoListState> mockProvider) {
    return ProviderScope(
      overrides: [
        todoListStateProvider.overrideWithProvider(mockProvider),
      ],
      child: const MaterialApp(
        home: TodoListPage(),
      ),
    );
  }

  testWidgets('ToDo List Test', (tester) async {
    final mockProvider =
        StateNotifierProvider<TodoListStateController, TodoListState>((ref) => MockTodoListStateController());
    await tester.pumpWidget(isEvenTestWidget(mockProvider));

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}

_wrapMaterialApp(Widget widget) {
  return MaterialApp(home: widget);
}
