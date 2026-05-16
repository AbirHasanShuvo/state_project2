import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tickerProvider = StreamProvider((_) {
  return Stream.periodic(Duration(seconds: 1), (count) => count);
});

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickAsync = ref.watch(tickerProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Live Timer')),
      body: Center(
        child: tickAsync.when(
          data: (count) => Text(
            "Second elapsed: $count",
            style: const TextStyle(fontSize: 30),
          ),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
