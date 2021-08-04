import 'dart:math';

mixin BallSports {
  void playsWith() => print('Ball');
double ballVolume(double radius) {
const values = 4/3 * 3.14;
return values * pow(radius, 3);
}
}
