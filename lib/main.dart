import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

final greetingsProvider = Provider<String>((ref) {
  return 'hello World';
});

void main() {
  runApp(ProviderScope(child: MyApp()));
}


class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(greetingsProvider);
  }

  return MaterialApp (
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text(value),
          ),
        ),
      );
  }
}
