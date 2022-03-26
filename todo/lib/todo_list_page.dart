import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo/todo_list_provider.dart';
import 'package:todo/todo_model.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(ref),
      body: _buildBody(ref),
    );
  }

  _buildAppBar(WidgetRef ref) {
    return AppBar(
      title: const Text('ToDoリスト'),
    );
  }

  _buildBody(WidgetRef ref) {
    final state = ref.watch(todoListStateProvider);
    useEffect(() {
      ref.read(todoListStateProvider.notifier).fetchTodos();
      return null;
    }, const []);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        ListView.builder(
          itemCount: state.todos.length,
          itemBuilder: ((context, index) => _buildTodoItem(state.todos[index])),
        ),
        Visibility(
          child: const CircularProgressIndicator(),
          visible: state.isFetching,
        ),
      ],
    );
  }

  _buildTodoItem(Todo todo) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.description),
    );
  }
}
