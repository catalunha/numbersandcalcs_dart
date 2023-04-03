import '../number_q.dart';
import '../number_q_seed.dart';

void testDecimals() {
  print('+++ testDecimals');
  bool seeDetails = false;
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      decimaList: ['1'],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      decimaList: ['123'],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
}
