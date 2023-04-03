import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testSum() {
  print('testSum');
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 5);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }
    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 1);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 1);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 1);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 4);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 4);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 4);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 5);
    assert(sum.fractionNumReduced == 2);
    assert(sum.fractionDenReduced == 3);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 5);
    assert(sum.fractionNumReduced == 2);
    assert(sum.fractionDenReduced == 3);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 6);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 2);
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
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 6);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 6);
  }
}
