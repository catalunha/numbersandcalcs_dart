import 'package:numbersandcalcs_dart/gcf_lcm/alg_gcf_lcm.dart';

import 'my_number.dart';

class SumMyNumbers {
  MyNumber num1;
  MyNumber num2;
  SumMyNumbers({
    required this.num1,
    required this.num2,
  });

  MyNumber sum() {
    MyNumber output = MyNumber();
    int? integer = (num1.integer == null) && num2.integer == null
        ? null
        : num1.signalValue * (num1.integer ?? 0) +
            num2.signalValue * (num2.integer ?? 0);
    MyNumberSignal signal = integer != null && integer < 0
        ? MyNumberSignal.negative
        : MyNumberSignal.positive;
    output = output.copyWith(integer: integer?.abs(), signal: signal);
    if (num1.fractionDen == num2.fractionDen) {
      int? fnum = (num1.fractionNum == null) && num2.fractionNum == null
          ? null
          : (num1.fractionNum ?? 0) + (num2.fractionNum ?? 0);
      MyNumberSignal signal = fnum != null && fnum < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(fractionNum: fnum?.abs(), signal: signal);
      output = output.copyWith(
          fractionDen: (num1.fractionDen == null) && num2.fractionDen == null
              ? null
              : (num1.fractionDen ?? 0) + (num2.fractionDen ?? 0));
    } else {
      int gcf = algGCF(num1.fractionDen ?? 1, num2.fractionDen ?? 1);
      print('gcf: $gcf');
      int f1num = (num1.fractionNum ?? 1) * (gcf ~/ (num1.fractionDen ?? 1));
      int f2num = (num2.fractionNum ?? 1) * (gcf ~/ (num2.fractionDen ?? 1));
      int fnum = num1.signalValue * f1num + num2.signalValue * f2num;
      int fden = gcf;
      MyNumberSignal signal =
          fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
      output = output.copyWith(
          fractionNum: fnum.abs(), fractionDen: fden, signal: signal);
    }
    output.simplifyFraction();
    output.setType();
    return output;
  }
}
