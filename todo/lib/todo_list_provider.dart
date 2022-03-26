import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/todo_list_controller.dart';
import 'package:todo/todo_list_state.dart';

final todoListStateProvider =
    StateNotifierProvider<TodoListStateController, TodoListState>((ref) => TodoListStateController());
