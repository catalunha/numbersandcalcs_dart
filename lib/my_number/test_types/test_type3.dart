import '../my_number.dart';
import '../my_number_seed.dart';

void testType3() {
  print('testType3');
  bool seeDetails = false;
  {
    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.fraction,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // fractionNumList: [3, 4, 5],
      // fractionDenList: [2, 3],
      fractionNumList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionDenList: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // var numbers1 =
    //     seed1.exportList(multipleList: [1, 2, 3], shuffleMultipleList: false);
    // numbers1.shuffle();
    print('Lista com : ${numbers1.length}');

    for (var element in numbers1) {
      if (element.typeReduced == NumberQType.mixed) {
        NumberQ? read = NumberQ.parse(element.toStringReduced());
        print(
            '${element.toStringOrigin()} ou ${element.toStringReduced()} [${element.toStringReduced() == read?.toStringReduced()}]');
        if (element.toStringReduced() != read?.toStringReduced()) {
          throw Exception('Resposta diferente');
        }
      }
    }
  }
}
