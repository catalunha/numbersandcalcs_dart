import '../my_number.dart';

void testDecimal() {
  print('testDecimal');
  bool seeDetails = false;

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }
    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');

    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
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
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
  }
  print('----');
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }
    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');

    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    NumberQ sum = num1 - num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} - num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
  }
  print('****');
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 5);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }
    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');

    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '2',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 3,
      decimal: '4',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '12',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '23',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.negative,
      integer: 1,
      decimal: '234',
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.negative);
    //assert(sum.integerReduced == 1);
  }

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      decimal: '1',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      fractionNum: 3,
      fractionDen: 4,
    );
    NumberQ sum = num1 * num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} * num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    //assert(sum.signal == MyNumberSignal.positive);
    //assert(sum.integerReduced == 1);
    //assert(sum.fractionNumReduced == 1);
    //assert(sum.fractionDenReduced == 4);
  }
}
