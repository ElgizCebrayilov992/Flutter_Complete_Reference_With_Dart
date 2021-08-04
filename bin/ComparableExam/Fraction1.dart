class Fraction1 implements Comparable<Fraction1> {
final int num;
final int den;
const Fraction1(this.num, this.den);


double toDouble() => num / den;




@override
int compareTo(Fraction1 other) {
if (toDouble() < other.toDouble()) return -1;
if (toDouble() > other.toDouble()) return 1;
return 0;
}




  @override
  String toString() => 'Fraction1(num: $num, den: $den)';
}
