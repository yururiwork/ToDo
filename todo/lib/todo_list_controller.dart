import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/todo_list_state.dart';
import 'package:todo/todo_model.dart';

class TodoListStateController extends StateNotifier<TodoListState> {
  TodoListStateController() : super(const TodoListState());

  Future<void>? fetchTodos() async {
    state = state.copyWith(todos: [], isFetching: true);
    await Future.delayed(const Duration(seconds: 3));
    final mockTodos = [
      const Todo('ToDo1のタイトル', 'ToDo1の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo2のタイトル', 'ToDo2の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo3のタイトル', 'ToDo3の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo4のタイトル', 'ToDo4の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo5のタイトル', 'ToDo5の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo6のタイトル', 'ToDo6の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo7のタイトル', 'ToDo7の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo8のタイトル', 'ToDo8の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo9のタイトル', 'ToDo9の詳しい内容詳しい内容詳しい内容詳しい内容'),
      const Todo('ToDo10のタイトル', 'ToDo10の詳しい内容詳しい内容詳しい内容詳しい内容'),
    ];
    state = state.copyWith(todos: mockTodos, isFetching: false);
  }
}
