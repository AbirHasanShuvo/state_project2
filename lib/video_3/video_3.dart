import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final textProvider = StateProvider((Ref ref) {
  return "";
});

class StateFulConsumerTutorial extends ConsumerStatefulWidget {
  const StateFulConsumerTutorial({super.key});

  @override
  ConsumerState createState() => _StateFulConsumerTutorialState();
}

class _StateFulConsumerTutorialState
    extends ConsumerState<StateFulConsumerTutorial> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    //initialize controller
    _controller = TextEditingController();
    _controller.addListener(() {
      ref.read(textProvider.notifier).state = _controller.text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = ref.watch(textProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Type what you want'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(controller: _controller,),
            const SizedBox(height: 10),
            Text('You Typed: ${text}', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
