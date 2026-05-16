import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_series/video_5/fake_api_service.dart';

final fakeApiProvider = Provider((_) => FakeApiService());

final greetingFutureProvider = FutureProvider((Ref ref) async {
  final service = ref.read(fakeApiProvider);
  return await service.fetchGreeting();
});

class GreetingScreen extends ConsumerWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingAsync = ref.watch(greetingFutureProvider);
    return Scaffold(
      body: Center(
        child: greetingAsync.when(
          data: (greeting) {
            return Text(greeting, style: TextStyle(fontSize: 30));
          },
          error: (error, stackTrace) {
            return Column(
              children: [
                Text(error.toString()),
                const SizedBox(height: 12),
                ElevatedButton(onPressed: () {
                  ref.refresh(greetingFutureProvider);
                }, child: Text('Retry')),
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
