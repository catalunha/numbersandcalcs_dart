import '../create_file.dart';
import '../my_number.dart';
import '../my_number_seed.dart';

void testType12() {
  print('testType12');
  bool seeDetails = false;
  {
    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.integer,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // integerList: [1, 2],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      // fractionNumList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      // fractionDenList: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // numbers1.shuffle();
    // for (var element in numbers1) {
    //   print(element.toStringReduced());
    // }

    MyNumberSeed seed2 = MyNumberSeed(
      type: NumberQType.mixed,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // integerList: [3, 4],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionNumList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fractionDenList: [1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    // print('seed2: $seed2');
    var numbers2 = seed2.exportList();
    // numbers2.shuffle();
    // for (var element in numbers2) {
    //   print(element.toStringReduced());
    // }

    var number1SumNumber2 = [];
    var number1SubNumber2 = [];
    var number1ProdNumber2 = [];
    var number1DivNumber2 = [];
    for (var number1 in numbers1) {
      for (var number2 in numbers2) {
        number1SumNumber2.add([number1, number2, number1 + number2]);
        number1SubNumber2.add([number1, number2, number1 - number2]);
        number1ProdNumber2.add([number1, number2, number1 * number2]);
        if (number2.integer != 0) {
          number1DivNumber2.add([number1, number2, number1 / number2]);
        }
      }
    }
    var fileOpen = createFile('type12_number1SumNumber2');
    fileOpen.writeln(
        'Iterações entre number1 + number2: ${number1SumNumber2.length}');
    // number1SumNumber2.shuffle();
    for (var op in number1SumNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} + ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
    }
    fileOpen.close();
    fileOpen = createFile('type12_number1SubNumber2');
    fileOpen.writeln(
        'Iterações entre number1 - number2: ${number1SubNumber2.length}');
    // number1SubNumber2.shuffle();
    for (var op in number1SubNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} - ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} - ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }
    fileOpen.close();
    fileOpen = createFile('type12_number1ProdNumber2');
    fileOpen.writeln(
        'Iterações entre number1 * number2: ${number1ProdNumber2.length}');
    // number1ProdNumber2.shuffle();
    for (var op in number1ProdNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} * ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} * ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }
    fileOpen.close();
    fileOpen = createFile('type12_number1DivNumber2');
    fileOpen.writeln(
        'Iterações entre number1 / number2: ${number1DivNumber2.length}');
    // number1DivNumber2.shuffle();
    for (var op in number1DivNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} / ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} / ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }
    fileOpen.close();
  }
}
