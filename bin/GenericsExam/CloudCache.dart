import 'GenericsExam.dart';

class CloudCache<T extends num, K> extends Cache<T> {
  CloudCache(T obj, K obj2) : super(obj);
  @override
  void handle() {
     print(value);
  }
}
