import '../create_file.dart';
import '../my_number.dart';
import '../my_number_seed.dart';

void testType5() {
  print('testType5');
  bool seeDetails = false;
  {
    List<int> integers = [];
    for (var i = 0; i < 1000; i++) {
      integers.add(i);
    }

    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.positive],
      integerList: integers,
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // var numbers1 =
    //     seed1.exportList(multipleList: [1, 2, 3], shuffleMultipleList: false);
    var fileOpen = createFile('type5_DisassembleNumber');
    fileOpen.writeln('Lista com : ${numbers1.length}');
    // numbers1.shuffle();

    for (var element in numbers1) {
      NumberQ read = NumberQ.assemble(element.disassemble());
      fileOpen
          .writeln('${element.toStringOrigin()} = ${element.disassemble()}');
      if (element.integer != read.integer) {
        throw Exception('Resposta diferente');
      }
    }
    fileOpen.close();
  }
}
