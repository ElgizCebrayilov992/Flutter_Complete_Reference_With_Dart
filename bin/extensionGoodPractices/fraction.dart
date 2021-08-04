class Fraction {
late  String  _name;

  // ignore: unnecessary_getters_setters
  String get name => _name;
 

  // ignore: unnecessary_getters_setters
  set name(String name) {
    _name = name;
  }
  @override
  String toString() {
    return super.toString();
  }

  Fraction.fromString(String name){
    print(name);
  }

}
