import 'my_number.dart';

void exampleDecimal() {
  print('exampleDecimal');
  bool seeDetails = false;

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      decimal: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
      decimal: 4,
    );
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()} dec:');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.negative,
      integer: 1,
      decimal: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
      decimal: 4,
    );
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }
    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      decimal: 2,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.negative,
      integer: 3,
      decimal: 4,
    );
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
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
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
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
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
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
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
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
      decimal: 5,
    );
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
    //assert(sum.fractionNumReduced == 2);
    //assert(sum.fractionDenReduced == 3);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 4,
      decimal: 5,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      fractionNum: 2,
      fractionDen: 3,
    );
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
    //assert(sum.fractionNumReduced == 2);
    //assert(sum.fractionDenReduced == 3);
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
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 6);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 2);
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
    MyNumber sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sum: ${sum.toStringType()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 6);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 6);
  }
}
