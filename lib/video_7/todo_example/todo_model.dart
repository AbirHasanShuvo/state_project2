class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({required this.completed, required this.id, required this.title});

  Todo copyWith({int? id, String? title, bool? completed}) {
    return Todo(
      completed: completed ?? this.completed,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}
