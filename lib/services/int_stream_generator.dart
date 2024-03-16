import 'dart:async';

class IntStreamGenerator {
  static Stream<int> generateIntStream() {
    // Create a StreamController
    StreamController<int> controller = StreamController<int>();

    // Generate integers and add them to the stream periodically
    int count = 0;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      controller.sink.add(count);
      count++;
    });

    // Return the stream
    return controller.stream;
  }
}