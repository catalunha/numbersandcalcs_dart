import '../my_number.dart';
import '../my_number_seed.dart';

void testType1() {
  print('testType1');
  bool seeDetails = false;
  {
    MyNumberSeed seed1 = MyNumberSeed(
      type: NumberQType.integer,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // integerList: [1, 2],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    print('seed1: $seed1');
    var numbers1 = seed1.exportList();
    numbers1.shuffle();
    // for (var element in numbers1) {
    //   print(element.toStringReduced());
    // }

    MyNumberSeed seed2 = MyNumberSeed(
      type: NumberQType.integer,
      // signalList: [NumberQSignal.positive],
      // // signalList: [NumberQSignal.negative],
      signalList: [NumberQSignal.positive, NumberQSignal.negative],
      // integerList: [3, 4],
      integerList: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    );
    print('seed2: $seed2');
    var numbers2 = seed2.exportList();
    numbers2.shuffle();
    // for (var element in numbers2) {
    //   print(element.toStringReduced());
    // }

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
        // print(
        //     '${number1.toStringOrigin()} + ${number2.toStringOrigin()} = ${(number1 + number2).toStringReduced()}');
      }
    }
    number1SumNumber2.shuffle();
    print('Iterações entre number1 + number2: ${number1SumNumber2.length}');
    for (var op in number1SumNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      print(
          '${op[0].toStringOrigin()} + ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
    }

    number1SubNumber2.shuffle();
    print('Iterações entre number1 - number2: ${number1SubNumber2.length}');
    for (var op in number1SubNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      print(
          '${op[0].toStringOrigin()} - ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} - ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }

    number1ProdNumber2.shuffle();
    print('Iterações entre number1 * number2: ${number1ProdNumber2.length}');
    for (var op in number1ProdNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      print(
          '${op[0].toStringOrigin()} * ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} * ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }

    number1DivNumber2.shuffle();
    print('Iterações entre number1 / number2: ${number1DivNumber2.length}');
    for (var op in number1DivNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      print(
          '${op[0].toStringOrigin()} / ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} / ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }

    number1PotNumber2.shuffle();
    print('Iterações entre number1 ^ number2: ${number1PotNumber2.length}');
    for (var op in number1PotNumber2) {
      NumberQ? read = NumberQ.parse(op[2].toStringReduced());
      print(
          '${op[0].toStringOrigin()} ^ ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
      if (op[2].toStringReduced() != read?.toStringReduced()) {
        throw Exception('Resposta diferente');
      }
      // print(
      //     '${op[0].toStringOrigin()} ^ ${op[1].toStringOrigin()} = ${op[2].toStringReduced()}');
    }
    number1SqrtNumber2.shuffle();
    print('Iterações entre number1 sqrt number2: ${number1SqrtNumber2.length}');
    for (var op in number1SqrtNumber2) {
      if (op[2] != null) {
        NumberQ? read = NumberQ.parse(op[2].toStringReduced());
        print(
            '${op[0].toStringOrigin()} sqrt ${op[1].toStringOrigin()} = ${op[2].toStringReduced()} [${op[2].toStringReduced() == read?.toStringReduced()}]');
        if (op[2].toStringReduced() != read?.toStringReduced()) {
          throw Exception('Resposta diferente');
        }
      }
      // print(
      //     '${op[0].toStringOrigin()} & ${op[1].toStringOrigin()} = ${op[2]?.toStringReduced()}');
    }
  }
}
