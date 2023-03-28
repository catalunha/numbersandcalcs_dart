import 'my_number.dart';

void isolate() {
  MyNumber num1 = MyNumber(
    signal: MyNumberSignal.positive,
    integer: 2,
  );
  MyNumber num2 = MyNumber(
    signal: MyNumberSignal.positive,
    integer: 3,
  );
  MyNumber sum = num1 + num2;
  print(num1);
  print(num2);
  print(sum);
}
