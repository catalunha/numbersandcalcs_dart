import '../number_q.dart';
import '../number_q_seed.dart';

void testIntegers() {
  print('testIntegers');
  bool seeDetails = false;
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.positive],
      integerList: [1, 2],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.negative],
      integerList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
  {
    NumberQSeed seed = NumberQSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      integerList: [5, 6],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
}
