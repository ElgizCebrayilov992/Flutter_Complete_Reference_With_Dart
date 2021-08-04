import 'FractionDivisionByZero.dart';

class FractionException {
  final int _denominator;
  final int _numerator;
  FractionException(this._numerator, this._denominator) {
    if (_denominator == 0) {
      throw FractionDivisionByZero('sifir ola bilmez');
    }
  }
}
