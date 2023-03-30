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
    simplifyValues();
    // decimalToFraction();
    setType();
    calculeInDouble();
  }
  void simplifyValues() {
    //print('etapa0: ${toString()}');
    _integerReduced = integer;
    decimalToFraction();
    _fractionNumReduced = _fractionNumReduced ?? fractionNum;
    _fractionDenReduced = _fractionDenReduced ?? fractionDen;
    //print('etapa1: ${toString()}');
    if (_fractionNumReduced != null && _fractionDenReduced != null) {
      int lcm = algLCM(_fractionNumReduced!, _fractionDenReduced!);
      //print('lcm: $lcm');
      _fractionNumReduced = _fractionNumReduced! ~/ lcm;
      _fractionDenReduced = _fractionDenReduced! ~/ lcm;
      //print('etapa2: ${toString()}');

      if (_fractionNumReduced! > _fractionDenReduced!) {
        _integerReduced = (_integerReduced ?? 0) +
            _fractionNumReduced! ~/ _fractionDenReduced!;
        _fractionNumReduced = _fractionNumReduced! % _fractionDenReduced!;
      }
      //print('etapa3: ${toString()}');

      if (_fractionNumReduced == 0 && _fractionDenReduced == 1) {
        _fractionNumReduced = null;
        _fractionDenReduced = null;
      }
      //print('etapa4: ${toString()}');
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
      try {
        _inDouble = _integerReduced == null
            ? null
            : (signalValue * _integerReduced!).toDouble();
      } catch (e) {
        print('Erro em integer');
      }
    }
    if (type == MyNumberType.decimal) {
      _inDouble = (signalValue *
          (_integerReduced! + _fractionNumReduced! / _fractionDenReduced!));
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
    if (decimal == null &&
        _fractionNumReduced == null &&
        _fractionDenReduced == null) {
      _type = MyNumberType.integer;
    } else if (_fractionNumReduced == null && _fractionDenReduced == null) {
      _type = MyNumberType.decimal;
    } else if (_integerReduced == null &&
        _fractionNumReduced != null &&
        _fractionDenReduced != null) {
      _type = MyNumberType.fraction;
    } else {
      _type = MyNumberType.mixed;
    }
  }

  int get signalValue {
    if (signal == MyNumberSignal.positive) {
      return 1;
    } else {
      return -1;
    }
  }

  String get signalSymbol {
    if (signal == MyNumberSignal.positive) {
      return '+';
    } else {
      return '-';
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

  double get inDouble {
    return _inDouble!;
  }

  MyNumberType? get type {
    return _type;
  }

  String toStringReduced() {
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
    MyNumberType typeTemp;
    if (decimal == null && fractionNum == null && fractionDen == null) {
      typeTemp = MyNumberType.integer;
    } else if (fractionNum == null && fractionDen == null) {
      typeTemp = MyNumberType.decimal;
    } else if (integer == null && fractionNum != null && fractionDen != null) {
      typeTemp = MyNumberType.fraction;
    } else {
      typeTemp = MyNumberType.mixed;
    }

    if (typeTemp == MyNumberType.integer) {
      myNumber += '$signalSymbol$integer';
    }
    if (typeTemp == MyNumberType.decimal) {
      myNumber += '$signalSymbol$integer.$decimal';
    }
    if (typeTemp == MyNumberType.fraction) {
      myNumber += '$signalSymbol$fractionNum/$fractionDen';
    }
    if (typeTemp == MyNumberType.mixed) {
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
    //print('+++ sum +++');
    MyNumber output = MyNumber();
    if (type == MyNumberType.integer && num2.type == MyNumberType.integer) {
      int? integerTemp = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) +
              num2.signalValue * (num2.integerReduced ?? 0);
      MyNumberSignal signal = integerTemp != null && integerTemp < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(
        integer: integerTemp?.abs(),
        signal: signal,
      );
      return output;
    }
    //print('+++ sum 1 +++');

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
    //print('+++ sum 2 +++');

    output = output.copyWith(
      fractionNum: fnum.abs(),
      fractionDen: fden,
      signal: signal,
    );
    //print('+++ sum 3 +++');

    // output.simplifyFraction();
    // output.calculeInDouble();
    // output.setType();
    return output;
  }

  MyNumber operator -(MyNumber num2) {
    MyNumber output = MyNumber();
    if (type == MyNumberType.integer && num2.type == MyNumberType.integer) {
      int? integerTemp = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) -
              num2.signalValue * (num2.integerReduced ?? 0);
      MyNumberSignal signal = integerTemp != null && integerTemp < 0
          ? MyNumberSignal.negative
          : MyNumberSignal.positive;
      output = output.copyWith(
        integer: integerTemp?.abs(),
        signal: signal,
      );
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
      fractionNum: fnum.abs(),
      fractionDen: fden,
      signal: signal,
    );
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
      signal: signal,
    );
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
      signal: signal,
    );
    return output;
  }

  MyNumber operator ^(MyNumber num2) {
    if (num2.type != MyNumberType.integer &&
        num2.signal != MyNumberSignal.positive) {
      throw Exception('Expoente precisa ser inteiro e positivo');
    }
    MyNumber output = MyNumber();
    if (type == MyNumberType.integer) {
      output = output.copyWith(
          integer: pow(integerReduced!, num2.integerReduced!).toInt());
      return output;
    }
    int f1num = (fractionDenReduced ?? 1) * (integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;

    int fnum = pow(signalValue * f1num, num2.integerReduced!).toInt();
    int fden = pow(f1den, num2.integerReduced!).toInt();
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
      signal: signal,
      fractionNum: fnum,
      fractionDen: fden,
    );
    return output;
  }

  MyNumber operator &(MyNumber num2) {
    if (num2.type != MyNumberType.integer &&
        num2.signal != MyNumberSignal.positive) {
      throw Exception('Raiz precisa ser inteiro e positivo');
    }
    MyNumber output = MyNumber();

    if (type == MyNumberType.integer) {
      num temp = pow(integerReduced!, 1 / num2.integerReduced!);
      if (temp % 1 != 0) {
        throw Exception('Erro: A raiz quadrada é decimal');
      }
      output = output.copyWith(integer: (temp % 1 == 0) ? temp.toInt() : null);
      return output;
    }
    int f1num = (fractionDenReduced ?? 1) * (integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    //print('f1num: $f1num');
    int f1den = fractionDenReduced ?? 1;
    //print('f1den: $f1den');

    num fnum = pow(signalValue * f1num, 1 / num2.integerReduced!);
    //print('fnum: $fnum');
    if (fnum % 1 != 0) {
      throw Exception('Erro: A raiz quadrada é decimal');
    }
    num fden = pow(f1den, 1 / num2.integerReduced!);
    //print('fden: $fden');
    if (fden % 1 != 0) {
      throw Exception('Erro: A raiz quadrada é decimal');
    }
    MyNumberSignal signal =
        fnum < 0 ? MyNumberSignal.negative : MyNumberSignal.positive;
    fnum = fnum.abs();
    //print('output1: $output');
    output = output.copyWith(
      signal: signal,
      fractionNum: (fnum % 1 == 0) ? fnum.toInt() : null,
      fractionDen: (fden % 1 == 0) ? fden.toInt() : null,
    );
    return output;
  }
}
