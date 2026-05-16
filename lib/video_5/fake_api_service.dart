import 'dart:math';

class FakeApiService {
  Future<String> fetchGreeting() async {
    await Future.delayed(Duration(seconds: 2));

    if (Random().nextDouble() < 0.3) {
      throw Exception('Failed to fetch greeting');
    }
    return 'Hello from async';
  }
}
