import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void exampleDiv() {
  print('exampleDiv');

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.negative);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 3);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.fractionNumReduced == 5);
    assert(div.fractionDenReduced == 12);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.integerReduced == 2);
    assert(div.fractionNumReduced == 2);
    assert(div.fractionDenReduced == 5);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.fractionNumReduced == 10);
    assert(div.fractionDenReduced == 29);
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
    MyNumber div = num1 / num2;
    print(num1);
    print(num2);
    print(div);
    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} div: ${div.toStringType()}');
    assert(div.signal == MyNumberSignal.positive);
    assert(div.fractionNumReduced == 15);
    assert(div.fractionDenReduced == 22);
  }
}
