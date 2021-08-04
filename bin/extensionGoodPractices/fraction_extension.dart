import 'fraction.dart';

extension FractionExt on String {

  bool isFraction() => contains('/') ? true : false;

  Fraction toFraction()=>Fraction.fromString(this);



}
