import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testSub() {
  print('testSub');
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 1);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 5);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.positive);
    assert(sub.integerReduced == 5);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.positive);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 2);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 3);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.positive);
    assert(sub.integerReduced == 2);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 3);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 3);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 6);
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
    NumberQ sub = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sub);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sub: ${sub.toStringReduced()}');
    assert(sub.signal == NumberQSignal.negative);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 6);
  }
}
