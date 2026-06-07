import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_series/video_7/todo_example/todo_provider_controller.dart';

class TodoScreen extends ConsumerStatefulWidget {
  const TodoScreen({super.key});

  @override
  ConsumerState<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoListProvider);
    final notifier = ref.read(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod TODO Screen'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: 'New Task'),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
