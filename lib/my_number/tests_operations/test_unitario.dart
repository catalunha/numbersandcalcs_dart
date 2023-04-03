import '../my_number.dart';

void testUnitario() {
  print('+++ testUnitario');
  NumberQ num1 = NumberQ(
    signal: NumberQSignal.positive,
    integer: 12,
  );
  print('num1: $num1 ');
  print('num1Original: ${num1.toStringOrigin()} ');
  print('num1Reduced: ${num1.toStringReduced()} ');
  print('disassemble: ${num1.disassemble()} ');

  print('--- testUnitario');
}
