import '../number_q.dart';
import '../number_q_seed.dart';

void testFractions() {
  print('testFractions');
  bool seeDetails = false;
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
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
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      fractionNumList: [2],
      fractionDenList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      fractionNumList: [5],
      fractionDenList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      fractionNumList: [3, 4],
      fractionDenList: [1],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      fractionNumList: [3, 4],
      fractionDenList: [2],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      fractionNumList: [3, 4],
      fractionDenList: [5],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print('Origin: ${element.toStringOrigin()}');
      print('Reduced: ${element.toStringReduced()}');
    }
  }
}
