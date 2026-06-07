import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_series/video_7/todo_example/todo_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final staticProvider = Provider((Ref ref) {
  return "Hello Sin Thia\n Amar bow";
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stringProvider = ref.watch(staticProvider);
    //read is only executed 1 time
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : TodoScreen()

      //CounterScreen()

      //TimerScreen(),

      //GreetingScreen()

      //StateFulConsumerTutorial()

      //StateProviderTutorial()
      // Scaffold(
      //   body: Center(
      //     child: Text(stringProvider, style: TextStyle(fontSize: 40)),
      //   ),
      // ),
    );
  }
}
