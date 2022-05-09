import 'package:flutter_test/flutter_test.dart';

import 'package:easy_queue/easy_queue.dart';

void main() {
  test('adds one to input values', () {
    final queue = Queue<String>();
    queue.push('Tran');
    queue.push('Van');
    queue.push('Hieu');
    expect(queue.pop(), 'Tran');
    expect(queue.pop(), 'Van');
    expect(queue.pop(), 'Hieu');
  });
}
