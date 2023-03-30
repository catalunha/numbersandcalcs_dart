import 'my_number.dart';

void isolateTest() {
  print('+++ isolateTest');
  if (false) {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 4,
      fractionNum: 5,
      fractionDen: 6,
    );
    MyNumber sum = num1 + num2;
    if (true) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    // assert(sum.signal == MyNumberSignal.positive);
    // assert(sum.integerReduced == 6);
    // assert(sum.fractionNumReduced == 1);
    // assert(sum.fractionDenReduced == 2);
  }
  if (true) {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      // integer: 1,
      fractionNum: 4,
      fractionDen: 2,
    );

    print('num1Original: ${num1.toStringOrigin()} ');
    print('num1Reduced: ${num1.toStringReduced()} ');
  }
  print('--- isolateTest');
}
