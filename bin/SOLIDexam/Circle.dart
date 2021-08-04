import 'Area.dart';

class Circle  implements Area{
final double radius;
Circle(this.radius);
double get PI => 3.1415;

  @override
  double computeArea() {
    // TODO: implement computeArea
    throw UnimplementedError();
  }
}