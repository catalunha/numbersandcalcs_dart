import 'package:numbersandcalcs_dart/number_q/number_q.dart';

void testUnitario() {
  print('+++ testUnitario');
  // NumberQ num1 = NumberQ(
  //   signal: NumberQSignal.positive,
  //   fractionNum: 1,
  //   fractionDen: 2,
  // );
  // print('num1: $num1 ');
  // print('num1Original: ${num1.toStringOrigin()} ');
  // print('num1Reduced: ${num1.toStringReduced()} ');

  // {
  //   List<int> percents = [];
  //   for (var i = 1; i < 100; i++) {
  //     percents.add(i);
  //   }
  //   NumberQSeed seed = NumberQSeed(
  //     type: NumberQSeedType.percent,
  //     percentList: percents,
  //   );
  //   print('seed: $seed');
  //   for (var element in seed.exportPercentAsFraction()) {
  //     print('${element.toStringOrigin()} = ${element.toStringReduced()}');
  //   }
  // }
  {
    List<int> percents = [];
    for (var i = 1; i < 100; i++) {
      percents.add(i);
    }

    for (var percent in percents) {
      NumberQ numberQ =
          NumberQ(integer: 0, decimal: percent.toString().padLeft(2, '0'));
      // print(numberQ);
      print(
          '$percent % = ${numberQ.toStringReduced()} ou ${numberQ.toStringFraction()}');
    }
  }
  print('--- testUnitario');
}
