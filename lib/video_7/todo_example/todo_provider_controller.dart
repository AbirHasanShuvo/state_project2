import 'package:flutter_riverpod/legacy.dart';
import 'package:state_series/video_7/todo_example/todo_model.dart';

final todoListProvider =
    StateNotifierProvider<TodoListNotifier, List<TodoModel>>((ref) {
      return TodoListNotifier([]);
    });

class TodoListNotifier extends StateNotifier<List<TodoModel>> {
  TodoListNotifier(super.state);

  void add(String title) {
    final newTodo = TodoModel(
      completed: false,
      id: state.isEmpty ? 0 : state.last.id + 1,
      title: title,
    );

    state = [...state, newTodo];
  }

  void remove(int id) {
    state = state.where((t) => t.id != id).toList();
  }
}
