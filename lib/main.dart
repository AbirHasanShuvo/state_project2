import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_series/video_2/video_2.dart';
import 'package:state_series/video_3/video_3.dart';
import 'package:state_series/video_5/video_5.dart';
import 'package:state_series/video_6/video_6.dart';

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
      home: TimerScreen(),

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
