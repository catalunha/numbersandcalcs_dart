import 'my_number.dart';

void isolateTest() {
  print('+++ isolateTest');
  {
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
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    // assert(sum.signal == MyNumberSignal.positive);
    // assert(sum.integerReduced == 6);
    // assert(sum.fractionNumReduced == 1);
    // assert(sum.fractionDenReduced == 2);
  }
  print('--- isolateTest');
}
