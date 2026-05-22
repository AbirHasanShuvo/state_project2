import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_series/video_7/counter_example/counter_provider_controller.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    final ctrl = ref.read(counterProvider.notifier);
    //because we needed to triger increment, decrement function once
    return Scaffold(
      body: Center(child: Text('Counter : $count', style: TextStyle(fontSize: 35))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => ctrl.increment(),
            child: Icon(Icons.add),
          ),

          FloatingActionButton(
            onPressed: () => ctrl.reset(),
            child: Icon(Icons.refresh),
          ),

          FloatingActionButton(
            onPressed: () => ctrl.decrement(),
            child: Icon(Icons.remove_circle),
          ),
        ],
      ),
    );
  }
}
