import 'dart:async';
import 'dart:math';

class RandomStream {
  /// The maximum random number to be generated
  final int maxValue;
  // ignore: unused_field
  static final _random = Random();
  // ignore: unused_field
  Timer? _timer;
  // ignore: unused_field
  late int _currentCount;
  late StreamController<int> _controller;

  RandomStream({this.maxValue = 100}) {
    _currentCount = 0;
    _controller = StreamController<int>(
        onListen: _startStream,
        onResume: _startStream,
        onPause: _stopTimer,
        onCancel: _stopTimer);
    _controller.add(_random.nextInt(maxValue));
// WRONG! In this way, the timer is started and thus events are
// emitted on the stream immediately (even if no one is listening)
    if (_currentCount == maxValue) {
      _stopTimer();
    }


  }

/*
  /// Handles a stream that continuously generates random numbers. Use
  /// [maxValue] to set the maximum random value to be generated.
  RandomStream({this.maxValue = 100}) {
    _currentCount = 0;
    _controller = StreamController<int>(
        onListen: _startStream,
        onResume: _startStream,
        onPause: _stopTimer,
        onCancel: _stopTimer);
  }
*/
  /// A reference to the random number stream
  Stream<int> get stream => _controller.stream;
  void _startStream() {
    _timer = Timer.periodic(const Duration(seconds: 3), _runStream);
    _currentCount = 0;
  }

  void _stopTimer() {
    _timer?.cancel();
    _controller.close();
  }

  void _runStream(Timer timer) {
    _currentCount++;
    _controller.add(_random.nextInt(maxValue));
    if (_currentCount == maxValue) {
      _stopTimer();
    }
  }
}
