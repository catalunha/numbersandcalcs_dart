import 'alg.dart';

void calculate() {
  int num1 = 4;
  int num2 = 8;
  print('GCF = ${algGCF(num1, num2)}');
  print('GCF = ${algGCF(num2, num1)}');
  print('LCM = ${algLCM(num1, num2)}');
  print('LCM = ${algLCM(num2, num1)}');
}
