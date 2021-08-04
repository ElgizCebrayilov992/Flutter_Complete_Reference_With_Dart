Future<int> processData(int param1, double param2) {
  var value = 0;
  for (var i = 0; i < param1; ++i) {
    for (var j = 0; j < param1 * param2; j++) {
      print(j);
      value = j;
      print(value);
    }
  }

  final res = httpGetRequest(value);
  return Future<int>.value(res);
}

int httpGetRequest(int value) {
  return value;
}

Future<int> one = exampleOne();
Future<int> exampleOne() => Future<int>.value(1);

Future<int> two = exampleTwo();
Future<int> exampleTwo() => Future<int>.value(2);

Future<int> three = exampleThree();
Future<int> exampleThree() => Future<int>.value(3);
/*
Future.wait<int>([
    one,
    two,
    three,
  ]).then(
    (result) {
      result.forEach((element) {
        print(element);
      });
    },
  )..catchError((e) => print(e.message));

*/