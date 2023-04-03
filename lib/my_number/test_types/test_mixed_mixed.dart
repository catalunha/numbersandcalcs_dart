import '../number_q.dart';
import '../number_q_seed.dart';

void testMixedMixed() {
  print('testMixedMixed');
  bool seeDetails = false;
  {
    NumberQSeed seed1 = NumberQSeed(
      type: NumberQType.mixed,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      fractionNumList: [1],
      fractionDenList: [3, 4],
    );
    print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    for (var element in numbers1) {
      print(element.toStringReduced());
    }
    NumberQSeed seed2 = NumberQSeed(
      type: NumberQType.mixed,
      signalList: [NumberQSignal.positive],
      integerList: [1],
      fractionNumList: [3, 4],
      fractionDenList: [1, 2],
    );
    print('seed2: $seed2');
    var numbers2 = seed2.exportList();

    for (var element in numbers2) {
      print(element.toStringReduced());
    }

    for (var element in numbers2) {
      print(element.toStringReduced());
    }
    print('number1 x number2');

    for (var number1 in numbers1) {
      for (var number2 in numbers2) {
        print(
            '${number1.toStringOrigin()} + ${number2.toStringOrigin()} = ${(number1 + number2).toStringReduced()}');
      }
    }
    print('number2 x number1');
    for (var number2 in numbers2) {
      for (var number1 in numbers1) {
        print(
            '${number2.toStringOrigin()} + ${number1.toStringOrigin()}= ${(number2 + number1).toStringReduced()}');
      }
    }
  }
}
