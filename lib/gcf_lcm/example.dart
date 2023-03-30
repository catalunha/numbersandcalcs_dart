import 'alg_gcf_lcm.dart';

void testGCFandLCM() {
  int num1 = 2;
  int num2 = 3;
  print('GCF = ${algGCF(num1, num2)}');
  print('GCF = ${algGCF(num2, num1)}');
  print('LCM = ${algLCM(num1, num2)}');
  print('LCM = ${algLCM(num2, num1)}');
}
