import '../number_q.dart';

void testDecimal() {
  print('testDecimal');
  bool seeDetails = false;

  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 0,
      decimal: '001',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 0,
      decimal: '002',
    );
    NumberQ sum = num1 + num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} + num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 0);
    assert(sum.decimalReduced == '003');
  }

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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '600');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '600');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '200');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '200');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 0);
    assert(sum.decimalReduced == '110');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 0);
    assert(sum.decimalReduced == '110');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 0);
    assert(sum.decimalReduced == '134');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 0);
    assert(sum.decimalReduced == '134');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 1);
    assert(sum.fractionNumReduced == 17);
    assert(sum.fractionDenReduced == 20);
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '200');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '200');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '600');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '600');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '350');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '350');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '334');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 2);
    assert(sum.decimalReduced == '334');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.fractionNumReduced == 7);
    assert(sum.fractionDenReduced == 20);
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '080');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '080');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '080');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 4);
    assert(sum.decimalReduced == '080');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 1);
    assert(sum.decimalReduced == '378');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 1);
    assert(sum.decimalReduced == '378');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 1);
    assert(sum.decimalReduced == '357');
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
    assert(sum.signal == NumberQSignal.negative);
    assert(sum.integerReduced == 1);
    assert(sum.decimalReduced == '357');
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
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.fractionNumReduced == 33);
    assert(sum.fractionDenReduced == 40);
  }
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 0,
      decimal: '001',
    );
    NumberQ num2 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 0,
      decimal: '002',
    );
    NumberQ sum = num1 / num2;
    if (seeDetails) {
      print(num1);
      print(num2);
      print(sum);
    }

    print(
        'num1: ${num1.toStringReduced()} / num2: ${num2.toStringReduced()} sum: ${sum.toStringReduced()}');
    assert(sum.signal == NumberQSignal.positive);
    assert(sum.fractionNumReduced == 1);
    assert(sum.fractionDenReduced == 2);
  }
}
