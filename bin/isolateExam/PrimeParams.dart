class PrimeParams {
final int limit;
final double another;
const PrimeParams(this.limit, this.another);
}
// Use the model as parameter
double sumOfPrimes(PrimeParams data) {
final limit = data.limit;
final another = data.another;
return limit+another;
}
// Function to be called in Flutter
Future<double> heavyCalculations() {
final params = PrimeParams(50000, 10.5);
return compute<PrimeParams, int>(sumOfPrimes, params);
}

Future<double> compute<Q,R>(double Function(PrimeParams data) sumOfPrimes, PrimeParams params) {
  return Future.value(2);
}