library easy_queue;

/// A Calculator.
class Queue<T> {
  Queue({this.maxQueue}) : _queue = [];

  final List<T> _queue;

  ///nếu [maxQueue] == null thì cho phép  hàng đợi ko giới hạng
  final int? maxQueue;

  void push(T item) {
    if (maxQueue == null || length < maxQueue!) {
      _queue.insert(0, item);
      return;
    }

    throw QueueWasFull();
  }

  T? pop() {
    if (length == 0) return null;
    T lastItem = _queue.last;
    _queue.removeLast();
    return lastItem;
  }

  List<T> get value => _queue;


  int get length => _queue.length;

  bool isEmpty(){
    return _queue.isEmpty;
  }

  @override
  String toString() {
    // TODO: implement toString

    return _queue.toString();
  }
}

class QueueWasFull implements Exception {
  QueueWasFull() : super();

  @override
  String toString() {
    return 'Exception: Queue is full';
  }
}
