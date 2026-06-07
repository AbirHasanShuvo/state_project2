class TodoModel {
  final int id;
  final String title;
  final bool completed;

  TodoModel({required this.completed, required this.id, required this.title});

  TodoModel copyWith({int? id, String? title, bool? completed}){
    return TodoModel(completed: completed ?? this.completed, id: id ?? this.id, title: title ?? this.title);
  }

  


}