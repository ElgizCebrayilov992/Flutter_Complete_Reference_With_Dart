import 'Breathing.dart';
import 'Coding.dart';
import 'Human.dart';

class Developer extends Human with Breathing, Coding {
  Developer(String name, String surname) : super(name, surname);

  
}