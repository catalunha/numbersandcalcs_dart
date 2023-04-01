import '../my_number.dart';
import '../my_number_seed.dart';

void testMixeds() {
  print('+++ testMixeds');
  bool seeDetails = false;
  {
    MyNumberSeed seed = MyNumberSeed(
      type: NumberQType.mixed,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      fractionNumList: [1],
      fractionDenList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    MyNumberSeed seed = MyNumberSeed(
      type: NumberQType.mixed,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      fractionNumList: [1, 2],
      fractionDenList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    MyNumberSeed seed = MyNumberSeed(
      type: NumberQType.mixed,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      fractionNumList: [3, 4],
      fractionDenList: [1, 2],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
}
