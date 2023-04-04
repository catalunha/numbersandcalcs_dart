import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testUnitario() {
  print('+++ testUnitario');
  NumberQ num1 = NumberQ(signal: NumberQSignal.positive, integer: 1);
  NumberQ num2 = NumberQ(signal: NumberQSignal.positive, integer: 1);

  print(
      '${num1.toStringReduced()} == ${num2.toStringReduced()} ${num1.isEqualsThe(num2)}');
  print('--- testUnitario');
}
