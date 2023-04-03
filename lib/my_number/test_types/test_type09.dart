import '../create_file.dart';
import '../number_q.dart';
import '../number_q_seed.dart';

void testType09() {
  print('testType09');
  bool seeDetails = false;
  {
    // List<String> decimals = [];
    // for (var hundreds = 0; hundreds < 10; hundreds++) {
    //   for (var tens = 0; tens < 10; tens++) {
    //     for (var ones = 0; ones < 10; ones++) {
    //       decimals.add((ones + tens * 10 + hundreds * 100).toString());
    //       print((ones + tens * 10 + hundreds * 100).toString());
    //     }
    //   }
    // }
    NumberQSeed seed1 = NumberQSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      // decimaList: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
      decimaList: ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09'],
    );
    // print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    // numbers1.shuffle();
    // for (var element in numbers1) {
    //   print(element.toStringReduced());
    // }

    NumberQSeed seed2 = NumberQSeed(
      type: NumberQType.decimal,
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      decimaList: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
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
    var fileOpen = createFile('type09_number1SumNumber2');
    fileOpen.writeln(
        'Iterações entre number1 + number2: ${number1SumNumber2.length}');
    // number1SumNumber2.shuffle();
    for (var op in number1SumNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} + ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        print(
            '${op[0].toStringOrigin()} + ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
        print(op[2].toStringReduced());
        print(read?.toStringReduced());
        throw Exception('Resposta diferente');
      }
    }
    fileOpen.close();

    fileOpen = createFile('type09_number1SubNumber2');
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
    fileOpen = createFile('type09_number1ProdNumber2');
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
    fileOpen = createFile('type09_number1DivNumber2');
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
