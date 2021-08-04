import 'package:equatable/equatable.dart';

import 'SomeClass.dart';

class Test extends SomeClass with EquatableMixin {
  final int a;
  final int b;
  final String c;
  Test(this.a, this.b, this.c);

  @override
  List<Object?> get props => [a,b,c];

 
}
