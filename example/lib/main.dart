import 'package:easy_queue/easy_queue.dart';
import 'package:flutter/material.dart';

void main() {
  final queue = Queue<String>();
  queue.push('Tran');
  queue.push('Van');
  queue.push('Hieu');

  debugPrint(queue.pop());
  debugPrint(queue.pop());
  debugPrint(queue.pop());
}
