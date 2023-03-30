import '../my_number.dart';

void testUnitario() {
  print('+++ testUnitario');
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 1,
      fractionNum: 4,
      fractionDen: 2,
    );
    print('num1Original: ${num1.toStringOrigin()} ');
    print('num1Reduced: ${num1.toStringReduced()} ');
    assert(num1.signal == MyNumberSignal.positive);
    assert(num1.integerReduced == 3);
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      // integer: 1,
      fractionNum: 4,
      fractionDen: 2,
    );
    print('num1Original: ${num1.toStringOrigin()} ');
    print('num1Reduced: ${num1.toStringReduced()} ');
    assert(num1.signal == MyNumberSignal.positive);
    assert(num1.integerReduced == 2);
  }
  print('--- testUnitario');
}
