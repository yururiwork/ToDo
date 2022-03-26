import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/todo_model.dart';
import 'package:flutter/foundation.dart';

part 'todo_list_state.freezed.dart';
// part 'todo_list_state.g.dart';

@freezed
abstract class TodoListState implements _$TodoListState {
  const factory TodoListState({
    @Default(<Todo>[]) List<Todo> todos,
    @Default(false) bool isFetching,
  }) = _TodoListState;

  // factory TodoListState.fromJson(Map<String, dynamic> json) => _$TodoListStateFromJson(json);
}
