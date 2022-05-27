import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider((ref) {
  return Counter();
});

class Counter extends StateNotifier<dynamic> {
  Counter(): super(0);

  void increment() => state++;
}
