import '../create_file.dart';
import '../my_number.dart';
import '../my_number_seed.dart';

void testType2() {
  print('testType2');
  bool seeDetails = false;
  {
    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.fraction,
      signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      // signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // fractionNumList: [1, 2],
      // fractionDenList: [3, 4],
      fractionNumList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionDenList: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // var numbers1 =
    //     seed1.exportList(multipleList: [1, 2, 3], shuffleMultipleList: false);
    var fileOpen = createFile('type3_ReducingFractions');
    fileOpen.writeln('Lista com : ${numbers1.length}');
    // numbers1.shuffle();
    for (var element in numbers1) {
      if (element.typeReduced != NumberQType.mixed) {
        NumberQ? read = NumberQ.parse(element.toStringReduced());
        fileOpen.writeln(
            '${element.toStringOrigin()} = ${element.toStringReduced()}');
        if (element.toStringReduced() != read?.toStringReduced()) {
          throw Exception('Resposta diferente');
        }
      }
    }
    fileOpen.close();
  }
}
