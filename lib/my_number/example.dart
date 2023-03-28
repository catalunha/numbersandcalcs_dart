import 'package:numbersandcalcs_dart/my_number/my_number.dart';
import 'package:numbersandcalcs_dart/my_number/sum_my_numbers.dart';

void exampleMyNumber() {
  print('exampleMyNumber');
  MyNumber myNumber1 = MyNumber(
    signal: MyNumberSignal.positive,
    // type: MyNumberType.integer,
    // integer: 1,
    // decimal: 1,
    fractionNum: 1,
    fractionDen: 2,
  );
  print('myNumber1: $myNumber1');
  print('myNumber1: ${myNumber1.toStringType()}');
  MyNumber myNumber2 = MyNumber(
    signal: MyNumberSignal.negative,
    // type: MyNumberType.mixed,
    // integer: 2,
    // decimal: 1,
    fractionNum: 4,
    fractionDen: 3,
  );
  print('myNumber2: $myNumber2');
  print('myNumber2: ${myNumber2.toStringType()}');
  MyNumber sum = SumMyNumbers(
    num1: myNumber1,
    num2: myNumber2,
  ).sum();
  print('sum: ${sum.toString()}');
  print('sum: ${sum.toStringType()}');
}
