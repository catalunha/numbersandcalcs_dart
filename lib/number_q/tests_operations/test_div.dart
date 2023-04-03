import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testDiv() {
  print('testDiv');
  bool seeDetails = false;

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 6,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
    );
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.integerReduced == 2);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.fractionNumReduced == 5);
    assert(div.fractionDenReduced == 12);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.integerReduced == 2);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 5);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.fractionNumReduced == 10);
    assert(div.fractionDenReduced == 29);
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
    NumberQ div = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(div);
    }
    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} div: ${div.toStringReduced()}');
    assert(div.signal == NumberQSignal.positive);
    assert(div.fractionNumReduced == 15);
    assert(div.fractionDenReduced == 22);
  }
}
