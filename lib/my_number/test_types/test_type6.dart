import '../create_file.dart';
import '../number_q.dart';

void testType6() {
  print('testType6');
  bool seeDetails = false;
  {
    List<List<int>> integersDisassembled = [];
    for (var hundreds = 0; hundreds < 10; hundreds++) {
      for (var tens = 0; tens < 10; tens++) {
        for (var ones = 0; ones < 10; ones++) {
          if (tens == 0 && hundreds == 0) {
            integersDisassembled.add([ones]);
          }
          if (hundreds == 0 && tens != 0) {
            integersDisassembled.add([ones, tens * 10]);
          }
          if (hundreds != 0) {
            integersDisassembled.add([ones, tens * 10, hundreds * 100]);
          }
        }
      }
    }
    // MyNumberSeed seed1 = MyNumberSeed(
    //   type: NumberQType.integer,
    //   signalList: [NumberQSignal.positive],
    //   integerList: integers,
    // );
    // // print('seed1: $seed1');
    // var numbers1 = seed1.exportList();
    // var numbers1 =
    //     seed1.exportList(multipleList: [1, 2, 3], shuffleMultipleList: false);
    var fileOpen = createFile('type6_AssembleNumber');
    fileOpen.writeln('Lista com : ${integersDisassembled.length}');
    // numbers1.shuffle();

    for (var element in integersDisassembled) {
      NumberQ read = NumberQ.assemble(element);
      fileOpen.writeln('$element = ${read.integer}');
    }
    fileOpen.close();
  }
}
