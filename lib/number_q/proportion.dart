class Proportion {
  final int value1;
  final int value2;
  final int value3;
  final int positionVar;
  Proportion({
    required this.value1,
    required this.value2,
    required this.value3,
    this.positionVar = 1,
  });

  int? solve() {
    if (positionVar == 1) {
      num temp = value1 * value2 / value3;
      if (temp % temp.toInt() == 0) {
        return temp.toInt();
      }
    } else if (positionVar == 2 || positionVar == 3) {
      num temp = value1 * value3 / value2;
      if (temp % temp.toInt() == 0) {
        return temp.toInt();
      }
    } else if (positionVar == 4) {
      num temp = value2 * value3 / value1;
      if (temp % temp.toInt() == 0) {
        return temp.toInt();
      }
    }
    return null;
  }

  String toStringFormated() {
    String expression = '';
    if (positionVar == 1) {
      expression = 'a / $value1 = $value2 / $value3';
    } else if (positionVar == 2) {
      expression = '$value1 / a = $value2 / $value3';
    } else if (positionVar == 3) {
      expression = '$value1 / $value2 = a / $value3';
    } else if (positionVar == 4) {
      expression = '$value1 / $value2 =  $value3 / a';
    }
    return expression;
  }
}
