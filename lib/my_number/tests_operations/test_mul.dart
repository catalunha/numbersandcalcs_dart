import 'package:numbersandcalcs_dart/my_number/number_q.dart';

void testMul() {
  print('testMul');
  bool seeDetails = false;

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.integerReduced == 6);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.negative);
    assert(mul.integerReduced == 6);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.negative);
    assert(mul.integerReduced == 6);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 1,
      fractionDen: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      fractionNum: 1,
      fractionDen: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.negative);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 1,
      fractionDen: 2,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      fractionNum: 3,
      fractionDen: 4,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.negative);
    assert(mul.fractionNumReduced == 3);
    assert(mul.fractionDenReduced == 8);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 4,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.integerReduced == 6);
    assert(mul.fractionNumReduced == 2);
    assert(mul.fractionDenReduced == 3);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 4,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.integerReduced == 6);
    assert(mul.fractionNumReduced == 2);
    assert(mul.fractionDenReduced == 3);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 4,
      fractionNum: 5,
      fractionDen: 6,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.integerReduced == 8);
    assert(mul.fractionNumReduced == 1);
    assert(mul.fractionDenReduced == 18);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 2,
      fractionNum: 4,
      fractionDen: 8,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      fractionNum: 6,
      fractionDen: 9,
    );
    NumberQ mul = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(mul);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} mul: ${mul.toStringReduced()}');
    assert(mul.signal == NumberQSignal.positive);
    assert(mul.integerReduced == 9);
    assert(mul.fractionNumReduced == 1);
    assert(mul.fractionDenReduced == 6);
  }
}
