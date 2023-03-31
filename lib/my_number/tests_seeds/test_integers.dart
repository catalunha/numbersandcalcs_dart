import '../my_number.dart';
import '../my_number_seed.dart';

void testIntegers() {
  print('testIntegers');
  bool seeDetails = false;
  {
    MyNumberSeed seed = MyNumberSeed(
      type: MyNumberType.integer,
      signalList: [MyNumberSignal.positive],
      integerList: [1, 2],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
  {
    MyNumberSeed seed = MyNumberSeed(
      type: MyNumberType.integer,
      signalList: [MyNumberSignal.negative],
      integerList: [3, 4],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
  {
    MyNumberSeed seed = MyNumberSeed(
      type: MyNumberType.integer,
      signalList: [MyNumberSignal.positive, MyNumberSignal.negative],
      integerList: [5, 6],
    );
    print('seed: $seed');
    for (var element in seed.exportList()) {
      print(element.toStringReduced());
    }
  }
}
