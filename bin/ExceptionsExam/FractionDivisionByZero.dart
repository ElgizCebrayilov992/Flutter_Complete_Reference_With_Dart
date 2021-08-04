class FractionDivisionByZero implements Exception {
  final String message;
  const FractionDivisionByZero(this.message);
  @override
  String toString() => message;
}
