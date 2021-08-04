import 'dart:io';
import 'dart:math';

Stream<int> randomNumbersStream() async* {
  // 1.
  final random = Random();
  for (var i = 0; i < 100; ++i) {
    // 2.
    await Future.delayed(Duration(seconds: 1)); // 3.
    yield random.nextInt(50) + 1;
    yield random.nextInt(50) + 1;
    yield random.nextInt(50) + 1;
  }
}

Iterable<int> randomNumbersIterable() sync* {
  final random = Random();
  for (var i = 0; i < 100; ++i) {
    sleep(Duration(seconds: 1));
    yield random.nextInt(50) + 1;
  }
}

Stream<int> randomNumbersStreamPeriodic() async* {
  final random = Random();
  final stream = Stream<int>.periodic(
    const Duration(seconds: 2),
    (count) => random.nextInt(10),
  );
}

Stream<void> randomNumbersStreamError() async* {
  Future<void> something(Stream<int> source) async {
    try {
      await for (final event in source) {}
    } catch (e) {
      print('An error occurred: $e');
    }
  }

// Pass the error object
  await something(Stream<int>.error('Whoops'));
}

Stream<int> counterStream([int maxCount = 10000]) async* {
  final delay = const Duration(seconds: 1);
  var count = 0;
  while (true) {
    if (count == maxCount) {
      break;
    }
    await Future.delayed(delay);
    yield ++count;
  }
}
