import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void testMul() {
  print('testMul');
  bool seeDetails = false;

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.integerReduced == 6);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.negative,
      integer: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.negative);
    assert(mul.integerReduced == 6);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.negative,
      integer: 3,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.negative);
    assert(mul.integerReduced == 6);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 1,
      fractionDen: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.negative,
      fractionNum: 1,
      fractionDen: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.negative);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 1,
      fractionDen: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.negative,
      fractionNum: 3,
      fractionDen: 4,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.negative);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }

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
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.integerReduced == 6);
    assert(mul.fractionNumReduced == 2);
    assert(mul.fractionDenReduced == 3);
  }

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 4,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.integerReduced == 6);
    assert(mul.fractionNumReduced == 2);
    assert(mul.fractionDenReduced == 3);
  }
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
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.integerReduced == 8);
    assert(mul.fractionNumReduced == 1);
    assert(mul.fractionDenReduced == 18);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
      fractionNum: 4,
      fractionDen: 8,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
      fractionNum: 6,
      fractionDen: 9,
    );
    MyNumber mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == MyNumberSignal.positive);
    assert(mul.integerReduced == 9);
    assert(mul.fractionNumReduced == 1);
    assert(mul.fractionDenReduced == 6);
  }
}
