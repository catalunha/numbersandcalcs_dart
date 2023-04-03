import '../create_file.dart';
import '../my_number.dart';
import '../my_number_seed.dart';

void testType4() {
  print('testType4');
  bool seeDetails = false;
  {
    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.mixed,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // integerList: [1, 2],
      // fractionNumList: [3, 4],
      // fractionDenList: [5, 6],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionNumList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionDenList: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // var numbers1 =
    //     seed1.exportList(multipleList: [1, 2, 3], shuffleMultipleList: false);
    var fileOpen = createFile('type4_MixedToImproperFractions');
    fileOpen.writeln('Lista com : ${numbers1.length}');
    // numbers1.shuffle();

    for (var element in numbers1) {
      if (element.typeReduced == NumberQType.mixed) {
        NumberQ? read = NumberQ.parse(element.toStringFraction());
        fileOpen.writeln(
            '${element.toStringOrigin()} = ${element.toStringFraction()}');
        if (element.toStringFraction() != read?.toStringFraction()) {
          throw Exception('Resposta diferente');
        }
      }
    }
    fileOpen.close();
  }
}
