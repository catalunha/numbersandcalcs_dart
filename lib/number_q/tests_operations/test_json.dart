import '../number_q.dart';
import '../type01.dart';

void testJson() {
  print('+++ Testando Import e Export com JSON');
  NumberQ num1 = NumberQ(
    signal: NumberQSignal.positive,
    integer: 3,
  );
  NumberQ num2 = NumberQ(
    signal: NumberQSignal.positive,
    integer: 2,
  );
  print(num1.toJson());
  print(num2.toJson());
  print(Type1(
          num1: num1, num2: num2, operator: Type1Operator.sum, ans: num1 + num2)
      .toJson());
  print(Type1(
          num1: num1,
          num2: num2,
          operator: Type1Operator.subtraction,
          ans: num1 - num2)
      .toJson());

  // print(type2.toJson());

  // NumberQ sum = num1 + num2;
  // print('{"operator":"sum"}');
  // print(sum.toJson());
  // NumberQ sub = num1 - num2;
  // print('{"operator":"sub"}');
  // print(sub.toJson());
  // NumberQ mult = num1 * num2;
  // print('{"operator":"mult"}');
  // print(mult.toJson());
  // NumberQ div = num1 / num2;
  // print('{"operator":"div"}');
  // print(div.toJson());
  // final type1 = Type1.fromJson(
  //     '{"num1":${num1.toJson()},"num2":${num2.toJson()},"operator":"${Type1Operator.sum.name}","ans":${sum.toJson()}}');
  // print(type1.toJson());
  // final type2 =
  //     Type1(num1: num1, num2: num2, operator: Type1Operator.sum, ans: sum);
  // print(type2.toJson());
}
