import 'Walking.dart';

class Human with Walking {
// ignore: unused_field
  final String _name;
// ignore: unused_field
  final String _surname;

  Human(this._name, this._surname);

  void printName() => print('$_name :  $_surname');
}
