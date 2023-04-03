import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testPot() {
  print('testPot');
  bool seeDetails = false;

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 2,
    );
    NumberQ pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} pot: ${pot.toStringReduced()}');
    assert(pot.signal == NumberQSignal.positive);
    assert(pot.integerReduced == 9);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 2,
      fractionDen: 3,
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 2,
    );
    NumberQ pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} pot: ${pot.toStringReduced()}');
    assert(pot.signal == NumberQSignal.positive);
    assert(pot.fractionNumReduced == 4);
    assert(pot.fractionDenReduced == 9);
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
      integer: 2,
    );
    NumberQ pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringReduced()} num2: ${num2.toStringReduced()} pot: ${pot.toStringReduced()}');
    assert(pot.signal == NumberQSignal.positive);
    assert(pot.integerReduced == 2);
    assert(pot.fractionNumReduced == 7);
    assert(pot.fractionDenReduced == 9);
  }
}
