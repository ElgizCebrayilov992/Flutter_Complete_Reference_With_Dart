import 'GenericsExam.dart';

class LocalCache<T extends num> extends Cache<T> {
  LocalCache(T obj) : super(obj);

  @override
  void handle() {
    print(value);
  }
}
