import 'dart:math';

import '../gcf_lcm/alg_gcf_lcm.dart';

enum MyNumberType { integer, decimal, fraction, mixed }

enum MyNumberSignal { positive, negative }

class MyNumber {
  final MyNumberSignal signal;
  final int? integer;
  final int? decimal;
  final int? fractionNum;
  final int? fractionDen;
  int? _integerReduced;
  int? _fractionNumReduced;
  int? _fractionDenReduced;
  double? _inDouble;
  MyNumberType? _type;
  MyNumber({
    // this.type = MyNumberType.integer,
    this.signal = MyNumberSignal.positive,
    this.integer,
    this.decimal,
    this.fractionNum,
    this.fractionDen,
  }) {
    simplifyFraction();
    decimalToFraction();
    calculeInDouble();
    setType();
  }
  void simplifyFraction() {
    _fractionNumReduced = fractionNum;
    _integerReduced = integer;
    if (fractionNum != null && fractionDen != null) {
      if (fractionNum! > fractionDen!) {
        _fractionNumReduced = fractionNum! % fractionDen!;
        _integerReduced = (integer ?? 0) + fractionNum! ~/ fractionDen!;
      }
      int lcm = algLCM(_fractionNumReduced!, fractionDen!);
      _fractionNumReduced = _fractionNumReduced! ~/ lcm;
      _fractionDenReduced = fractionDen! ~/ lcm;
    }
  }

  void decimalToFraction() {
    if (decimal != null && (fractionNum != null || fractionDen != null)) {
      throw Exception('A parte decimal é numero ou fração ?');
    }
    if (decimal != null) {
      int lengthDecimal = decimal.toString().length;
      _fractionNumReduced = decimal;
      _fractionDenReduced = pow(10, lengthDecimal).toInt();
    }
  }

  void calculeInDouble() {
    if (type == MyNumberType.integer) {
      _inDouble = (signalValue * _integerReduced!) as double?;
    }
    if (type == MyNumberType.decimal) {
      _inDouble = (signalValue *
          (integer! + _fractionNumReduced! / _fractionDenReduced!));
    }
    if (type == MyNumberType.fraction) {
      _inDouble = signalValue * _fractionNumReduced! / _fractionDenReduced!;
    }
    if (type == MyNumberType.mixed) {
      _inDouble = (signalValue *
          (_integerReduced! + _fractionNumReduced! / _fractionDenReduced!));
    }
  }

  void setType() {
    if (decimal == null && fractionNum == null && fractionDen == null) {
      _type = MyNumberType.integer;
    } else if (fractionNum == null && fractionDen == null) {
      _type = MyNumberType.decimal;
    } else if (integer == null && decimal == null && integerReduced == null) {
      _type = MyNumberType.fraction;
    } else {
      _type = MyNumberType.mixed;
    }
  }

  int get signalValue {
    if (signal == MyNumberSignal.positive) {
      return 1;
    } else if (signal == MyNumberSignal.negative) {
      return -1;
    } else {
      return Random(DateTime.now().microsecond).nextBool() ? 1 : -1;
    }
  }

  String get signalSymbol {
    if (signal == MyNumberSignal.positive) {
      return '+';
    } else if (signal == MyNumberSignal.negative) {
      return '-';
    } else {
      return Random(DateTime.now().microsecond).nextBool() ? '+' : '-';
    }
  }

  int? get fractionNumReduced {
    return _fractionNumReduced;
  }

  int? get fractionDenReduced {
    return _fractionDenReduced;
  }

  int? get integerReduced {
    return _integerReduced;
  }

  MyNumberType? get type {
    return _type;
  }

  String toStringInteger() {
    return '$integerReduced';
  }

  String toStringDecimal() {
    return '$integerReduced.$decimal';
  }

  String toStringFraction() {
    return '$fractionNumReduced/$_fractionDenReduced';
  }

  String toStringMixed() {
    return '$integerReduced $fractionNumReduced/$_fractionDenReduced';
  }

  String toStringMixedReduced() {
    return '$integerReduced $fractionNumReduced/$_fractionDenReduced';
  }

  String toStringType() {
    String myNumber = '';
    if (type == MyNumberType.integer) {
      myNumber += '$signalSymbol$integerReduced';
    }
    if (type == MyNumberType.decimal) {
      myNumber += '$signalSymbol$integerReduced.$decimal';
    }
    if (type == MyNumberType.fraction) {
      myNumber += '$signalSymbol$fractionNumReduced/$_fractionDenReduced';
    }
    if (type == MyNumberType.mixed) {
      myNumber +=
          '$signalSymbol$integerReduced $fractionNumReduced/$_fractionDenReduced';
    }
    return myNumber;
  }

  String toStringOrigin() {
    String myNumber = '';
    if (type == MyNumberType.integer) {
      myNumber += '$signalSymbol$integer';
    }
    if (type == MyNumberType.decimal) {
      myNumber += '$signalSymbol$integer.$decimal';
    }
    if (type == MyNumberType.fraction) {
      myNumber += '$signalSymbol$fractionNum/$fractionDen';
    }
    if (type == MyNumberType.mixed) {
      myNumber += '$signalSymbol$integer $fractionNum/$fractionDen';
    }
    return myNumber;
  }

  MyNumber copyWith({
    MyNumberSignal? signal,
    int? integer,
    int? decimal,
    int? fractionNum,
    int? fractionDen,
  }) {
    return MyNumber(
      signal: signal ?? this.signal,
      integer: integer ?? this.integer,
      decimal: decimal ?? this.decimal,
      fractionNum: fractionNum ?? this.fractionNum,
      fractionDen: fractionDen ?? this.fractionDen,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyNumber &&
        other.signal == signal &&
        other.integer == integer &&
        other.decimal == decimal &&
        other.fractionNum == fractionNum &&
        other.fractionDen == fractionDen &&
        other._integerReduced == _integerReduced &&
        other._fractionNumReduced == _fractionNumReduced &&
        other._fractionDenReduced == _fractionDenReduced &&
        other._inDouble == _inDouble;
  }

  @override
  int get hashCode {
    return signal.hashCode ^
        integer.hashCode ^
        decimal.hashCode ^
        fractionNum.hashCode ^
        fractionDen.hashCode ^
        _integerReduced.hashCode ^
        _fractionNumReduced.hashCode ^
        _fractionDenReduced.hashCode ^
        _inDouble.hashCode;
  }

  @override
  String toString() {
    return 'MyNumber(signal: $signal, integer: $integer, decimal: $decimal, fractionNum: $fractionNum, fractionDen: $fractionDen, _integerReduced: $_integerReduced, _fractionNumReduced: $_fractionNumReduced, _fractionDenReduced: $_fractionDenReduced, _inDouble: $_inDouble, type: $type)';
  }

  MyNumber operator +(MyNumber num2) {
    MyNumber output = MyNumber();
    if (type == MyNumberType.integer && num2.type == MyNumberType.integer) {
      int? integer = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) +
              num2.signalValue * (num2.integerReduced ?? 0);
      MyNumberSignal signal = integer != null && integer < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(integer: integer?.abs(), signal: signal);
      output.setType();
      return output;
    }

    int f1num = (_fractionDenReduced ?? 1) * (_integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;

    int gcf = algGCF(f1den, f2den);
    f1num = (f1num) * (gcf ~/ (f1den));
    f2num = (f2num) * (gcf ~/ (f2den));
    int fnum = signalValue * f1num + num2.signalValue * f2num;
    int fden = gcf;
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    output = output.copyWith(
        fractionNum: fnum.abs(), fractionDen: fden, signal: signal);

    output.simplifyFraction();
    output.calculeInDouble();
    output.setType();
    return output;
  }

  MyNumber operator -(MyNumber num2) {
    MyNumber output = MyNumber();
    if (type == MyNumberType.integer && num2.type == MyNumberType.integer) {
      int? integer = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) -
              num2.signalValue * (num2.integerReduced ?? 0);
      MyNumberSignal signal = integer != null && integer < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(integer: integer?.abs(), signal: signal);
      output.setType();
      return output;
    }

    int f1num = (_fractionDenReduced ?? 1) * (_integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;

    int gcf = algGCF(f1den, f2den);
    f1num = (f1num) * (gcf ~/ (f1den));
    f2num = (f2num) * (gcf ~/ (f2den));
    int fnum = signalValue * f1num - num2.signalValue * f2num;
    int fden = gcf;
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    output = output.copyWith(
        fractionNum: fnum.abs(), fractionDen: fden, signal: signal);

    output.simplifyFraction();
    output.setType();
    return output;
  }

  MyNumber operator *(MyNumber num2) {
    MyNumber output = MyNumber();
    int f1num = (fractionDenReduced ?? 1) * (integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;
    int fnum = signalValue * f1num * num2.signalValue * f2num;
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

  MyNumber operator /(MyNumber num2) {
    MyNumber output = MyNumber();
    int f1num = (fractionDenReduced ?? 1) * (integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;
    int f2num = (num2.fractionDenReduced ?? 1) * (num2.integerReduced ?? 0) +
        (num2.fractionNumReduced ?? 0);
    int f2den = num2.fractionDenReduced ?? 1;
    int fnum = signalValue * f1num * num2.signalValue * f2den;
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
