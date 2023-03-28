import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void exampleSub() {
  print('exampleSub');

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 1);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 5);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.positive);
    assert(sub.integerReduced == 5);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.positive);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 4);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 2);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 3);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.positive);
    assert(sub.integerReduced == 2);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 3);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 3);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 6);
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
    MyNumber sub = num1 - num2;
    print(num1);
    print(num2);
    print(sub);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sub: ${sub.toStringType()}');
    assert(sub.signal == MyNumberSignal.negative);
    assert(sub.integerReduced == 1);
    assert(sub.fractionNumReduced == 1);
    assert(sub.fractionDenReduced == 6);
  }
}
