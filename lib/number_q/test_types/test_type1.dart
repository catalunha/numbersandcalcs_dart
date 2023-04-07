import '../create_file.dart';
import '../number_q.dart';
import '../number_q_seed.dart';

void testType1() {
  print('testType1');
  bool seeDetails = false;
  {
    NumberQSeed seed1 = NumberQSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    var numbers1 = seed1.exportList();

    NumberQSeed seed2 = NumberQSeed(
      type: NumberQType.integer,
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    var numbers2 = seed2.exportList();

    var number1SumNumber2 = [];
    var number1SubNumber2 = [];
    var number1ProdNumber2 = [];
    var number1DivNumber2 = [];
    var number1PotNumber2 = [];
    var number1SqrtNumber2 = [];
    for (var number1 in numbers1) {
      for (var number2 in numbers2) {
        number1SumNumber2.add([number1, number2, number1 + number2]);
        number1SubNumber2.add([number1, number2, number1 - number2]);
        number1ProdNumber2.add([number1, number2, number1 * number2]);
        if (number2.integer != 0) {
          number1DivNumber2.add([number1, number2, number1 / number2]);
        }
        number1PotNumber2.add([number1, number2, number1 ^ number2]);
        try {
          number1SqrtNumber2.add([number1, number2, number1 & number2]);
        } catch (e) {
          number1SqrtNumber2.add([number1, number2, null]);
        }
      }
    }
    var fileOpen = createFile('type1_number1SumNumber2');

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
    fileOpen = createFile('type1_number1SubNumber2');

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
    }
    fileOpen.close();
    fileOpen = createFile('type1_number1ProdNumber2');

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
    }
    fileOpen.close();
    fileOpen = createFile('type1_number1DivNumber2');

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
    }
    fileOpen.close();
    fileOpen = createFile('type1_number1PotNumber2');

    fileOpen.writeln(
        'Iterações entre number1 ^ number2: ${number1PotNumber2.length}');
    // number1PotNumber2.shuffle();
    for (var op in number1PotNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      fileOpen.writeln(
          '${op[0].toStringOrigin()} ^ ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
    }
    fileOpen.close();
    fileOpen = createFile('type1_number1SqrtNumber2');

    fileOpen.writeln(
        'Iterações entre number1 sqrt number2: ${number1SqrtNumber2.length}');
    // number1SqrtNumber2.shuffle();
    for (var op in number1SqrtNumber2) {
      if (op[2] != null) {
        NumberQ? read = NumberQ.parse(op[2].toStringReduced());
        fileOpen.writeln(
            '${op[0].toStringOrigin()} sqrt ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
        if (op[2].toStringReduced() != read?.toStringReduced()) {
          throw Exception('Resposta diferente');
        }
      }
    }
    fileOpen.close();
  }
}
