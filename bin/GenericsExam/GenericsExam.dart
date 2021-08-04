abstract class Cache<T> {
final T _obj;
Cache(this._obj);
T get value => _obj;
void handle(){
print(value);
}
}

/**
 * 
 * void main() {
// OK. 'int' and 'double' are subclasses of
// 'num' so this is allowed
  final local1 = LocalCache<int>(1);
  final local2 = LocalCache<double>(2.5);
  local1.handle();
// NO. 'String' is not a subclass of 'num'
// so this is NOT allowed
//final local3 = LocalCache<String>(3);
}
 * 
 * 
 */