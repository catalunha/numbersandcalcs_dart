import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void exampleSqrt() {
  print('exampleSqrt');
  bool seeDetails = false;

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 27,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 3,
    );

    try {
      MyNumber sqrt = num1 & num2;
      if (seeDetails) {
        print(num1);
        print(num2);
        print(sqrt);
      }

      print(
          'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sqrt: ${sqrt.toStringType()}');
      assert(sqrt.signal == MyNumberSignal.positive);
      assert(sqrt.integerReduced == 3);
    } catch (e) {
      print(e);
      print(
          'Erro na Raiz Quadrada: num1: ${num1.toStringType()} num2: ${num2.toStringType()} ');
    }
  }

  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      fractionNum: 4,
      fractionDen: 16,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    try {
      MyNumber sqrt = num1 & num2;
      if (seeDetails) {
        print(num1);
        print(num2);
        print(sqrt);
      }

      print(
          'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sqrt: ${sqrt.toStringType()}');
      // assert(sqrt.signal == MyNumberSignal.positive);
      // assert(sqrt.fractionNumReduced == 4);
      // assert(sqrt.fractionDenReduced == 9);
    } catch (e) {
      print(e);
      print(
          'Erro na Raiz Quadrada: num1: ${num1.toStringType()} num2: ${num2.toStringType()} ');
    }
  }
  {
    MyNumber num1 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 4,
      fractionNum: 9,
      fractionDen: 64,
    );
    MyNumber num2 = MyNumber(
      signal: MyNumberSignal.positive,
      integer: 2,
    );
    try {
      MyNumber sqrt = num1 & num2;
      if (seeDetails) {
        print(num1);
        print(num2);
        print(sqrt);
      }

      print(
          'num1: ${num1.toStringType()} num2: ${num2.toStringType()} sqrt: ${sqrt.toStringType()}');
      // assert(sqrt.signal == MyNumberSignal.positive);
      // assert(sqrt.integerReduced == 2);
      // assert(sqrt.fractionNumReduced == 7);
      // assert(sqrt.fractionDenReduced == 9);
    } catch (e) {
      print(e);
      print(
          'Erro na Raiz Quadrada: num1: ${num1.toStringType()} num2: ${num2.toStringType()} ');
    }
  }
}
