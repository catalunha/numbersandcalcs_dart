import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void examplePot() {
  print('examplePot');
  bool seeDetails = false;

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} pot: ${pot.toStringType()}');
    assert(pot.signal == MyNumberSignal.positive);
    assert(pot.integerReduced == 9);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 2,
      fractionDen: 3,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} pot: ${pot.toStringType()}');
    assert(pot.signal == MyNumberSignal.positive);
    assert(pot.fractionNumReduced == 4);
    assert(pot.fractionDenReduced == 9);
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
      integer: 2,
    );
    MyNumber pot = num1 ^ num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(pot);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} pot: ${pot.toStringType()}');
    assert(pot.signal == MyNumberSignal.positive);
    assert(pot.integerReduced == 2);
    assert(pot.fractionNumReduced == 7);
    assert(pot.fractionDenReduced == 9);
  }
}
