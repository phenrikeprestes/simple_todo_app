import 'package:flutter/foundation.dart';
import 'todo.dart';

class TodoModel extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(
      title: title,
    ));
    notifyListeners();
  }

  void toggleTodoDone(int index) {
    _todos[index].toggleDone();
    notifyListeners();
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
