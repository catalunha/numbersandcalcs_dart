import '../my_number.dart';

void testUnitario() {
  print('+++ testUnitario');
  {
    NumberQ num1 = NumberQ(
      signal: NumberQSignal.positive,
      integer: 1,
      fractionNum: 0,
      fractionDen: 1,
    );
    print('num1Original: ${num1.toStringOrigin()} ');
    print('num1Reduced: ${num1.toStringReduced()} ');
    // assert(num1.signal == NumberQSignal.positive);
    // assert(num1.integerReduced == 3);
  }

  print('--- testUnitario');
}
