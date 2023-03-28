int algGCF(int num1, int num2) {
  int resto;
  int a;
  int b;
  a = num1;
  b = num2;
  do {
    resto = a % b;
    a = b;
    b = resto;
  } while (resto != 0);
  return (num1 * num2) ~/ a;
}

int algLCM(int num1, int num2) {
  int resto;
  do {
    resto = num1 % num2;
    num1 = num2;
    num2 = resto;
  } while (resto != 0);
  return num1;
}
