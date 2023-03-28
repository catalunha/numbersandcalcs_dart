import 'package:numbersandcalcs_dart/gcf_lcm/alg_gcf_lcm.dart';

import 'my_number.dart';

class CalcMyNumbers {
  MyNumber num1;
  MyNumber num2;
  CalcMyNumbers({
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
    if ((num1.fractionDen == num2.fractionDen) &&
        (num1.fractionDen != null || num2.fractionDen != null)) {
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
    } else if (num1.fractionDen != null || num2.fractionDen != null) {
      int gcf = algGCF(num1.fractionDen ?? 1, num2.fractionDen ?? 1);
      int f1num = (num1.fractionNum ?? 0) * (gcf ~/ (num1.fractionDen ?? 1));
      int f2num = (num2.fractionNum ?? 0) * (gcf ~/ (num2.fractionDen ?? 1));
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

  MyNumber subtract() {
    MyNumber output = MyNumber();
    int? integer = (num1.integer == null) && num2.integer == null
        ? null
        : num1.signalValue * (num1.integer ?? 0) -
            num2.signalValue * (num2.integer ?? 0);
    MyNumberSignal signal = integer != null && integer < 0
        ? MyNumberSignal.negative
        : MyNumberSignal.positive;
    output = output.copyWith(integer: integer?.abs(), signal: signal);
    if ((num1.fractionDen == num2.fractionDen) &&
        (num1.fractionDen != null || num2.fractionDen != null)) {
      int? fnum = (num1.fractionNum == null) && num2.fractionNum == null
          ? null
          : (num1.fractionNum ?? 0) - (num2.fractionNum ?? 0);
      MyNumberSignal signal = fnum != null && fnum < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(fractionNum: fnum?.abs(), signal: signal);
      output = output.copyWith(
          fractionDen: (num1.fractionDen == null) && num2.fractionDen == null
              ? null
              : (num1.fractionDen ?? 0) - (num2.fractionDen ?? 0));
    } else if (num1.fractionDen != null || num2.fractionDen != null) {
      int gcf = algGCF(num1.fractionDen ?? 1, num2.fractionDen ?? 1);
      int f1num = (num1.fractionNum ?? 0) * (gcf ~/ (num1.fractionDen ?? 1));
      int f2num = (num2.fractionNum ?? 0) * (gcf ~/ (num2.fractionDen ?? 1));
      int fnum = num1.signalValue * f1num - num2.signalValue * f2num;
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

  MyNumber product() {
    MyNumber output = MyNumber();
    int f1num = (num1.fractionDenReduced ?? 1) * (num1.integerReduced ?? 0) +
        (num1.fractionNumReduced ?? 0);
    int f1den = num1.fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;
    int fnum = num1.signalValue * f1num * num2.signalValue * f2num;
    int fden = f1den * f2den;
    int lcm = algLCM(fnum, fden);
    fnum = fnum ~/ lcm;
    fden = fden ~/ lcm;
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
        integer: fden == 1 ? fnum : null,
        fractionNum: fden == 1 ? null : fnum,
        fractionDen: fden == 1 ? null : fden,
        signal: signal);

    output.simplifyFraction();
    output.setType();
    return output;
  }

  MyNumber division() {
    MyNumber output = MyNumber();
    int f1num = (num1.fractionDenReduced ?? 1) * (num1.integerReduced ?? 0) +
        (num1.fractionNumReduced ?? 0);
    int f1den = num1.fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;
    int fnum = num1.signalValue * f1num * num2.signalValue * f2den;
    int fden = f1den * f2num;
    int lcm = algLCM(fnum, fden);
    fnum = fnum ~/ lcm;
    fden = fden ~/ lcm;
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
        integer: fden == 1 ? fnum : null,
        fractionNum: fden == 1 ? null : fnum,
        fractionDen: fden == 1 ? null : fden,
        signal: signal);

    output.simplifyFraction();
    output.setType();
    return output;
  }
}
