import 'package:numbersandcalcs_dart/number_q/proportion.dart';

void testUnitario() {
  print('+++ testUnitario');
  Proportion proportion = Proportion(
    value1: 1,
    value2: 12,
    value3: 23,
    positionVar: 2,
  );
  print(proportion.solve());
  print('--- testUnitario');
}
