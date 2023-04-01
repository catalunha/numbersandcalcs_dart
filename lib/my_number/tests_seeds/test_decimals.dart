import '../my_number.dart';
import '../my_number_seed.dart';

void testDecimals() {
  print('+++ testDecimals');
  bool seeDetails = false;
  {
    MyNumberSeed seed = MyNumberSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      decimaList: [1],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    MyNumberSeed seed = MyNumberSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      decimaList: [123],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
}
