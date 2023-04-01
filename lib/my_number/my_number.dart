import 'dart:math';

import '../gcf_lcm/alg_gcf_lcm.dart';

enum NumberQType { integer, decimal, fraction, mixed }

enum NumberQSignal { positive, negative }

class NumberQ {
  final NumberQSignal signal;
  final int? integer;
  final int? decimal;
  final int? fractionNum;
  final int? fractionDen;
  NumberQType? _type;
  int? _integerReduced;
  int? _fractionNumReduced;
  int? _fractionDenReduced;
  NumberQType? _typeReduced;
  double? _inDouble;
  NumberQ({
    // this.type = MyNumberType.integer,
    this.signal = NumberQSignal.positive,
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

  static NumberQ? strint2MyNumber(String myNumberInString) {
    bool isSuccessful = true;

    NumberQ myNumber = NumberQ();
    try {
      var parts = myNumberInString.split(' ');
      if (parts.length == 1) {
        String partUnic = parts[0];
        if (!partUnic.contains('.') && !partUnic.contains('/')) {
          //print('$parte Is integer');
          int a = int.parse(partUnic);
          NumberQSignal signalTemp =
              a >= 0 ? NumberQSignal.positive : NumberQSignal.negative;
          myNumber = myNumber.copyWith(
            integer: a.abs(),
            signal: signalTemp,
          );
        } else if (partUnic.contains('.')) {
          //print('$parte Is decimal');
          var partsDec = partUnic.split('.');
          int a = int.parse(partsDec[0]);
          int b = int.parse(partsDec[1]);
          NumberQSignal signalTemp =
              a >= 0 ? NumberQSignal.positive : NumberQSignal.negative;
          myNumber = myNumber.copyWith(
            integer: a.abs(),
            decimal: b.abs(),
            signal: signalTemp,
          );
        } else if (partUnic.contains('/')) {
          //print('$parte Is fração');
          var partsFrac = partUnic.split('/');
          int a = int.parse(partsFrac[0]);
          int b = int.parse(partsFrac[1]);
          NumberQSignal signalTemp =
              a >= 0 ? NumberQSignal.positive : NumberQSignal.negative;
          myNumber = myNumber.copyWith(
            fractionNum: a.abs(),
            fractionDen: b.abs(),
            signal: signalTemp,
          );
        }
      } else {
        String partInt = parts[0];
        int a = int.parse(partInt);
        List<String> partFrac = parts[1].split('/');
        String partNum = partFrac[0];
        String partDen = partFrac[1];
        int b = int.parse(partNum);
        int c = int.parse(partDen);
        NumberQSignal signalTemp =
            a >= 0 ? NumberQSignal.positive : NumberQSignal.negative;
        myNumber = myNumber.copyWith(
          integer: a.abs(),
          fractionNum: b.abs(),
          fractionDen: c.abs(),
          signal: signalTemp,
        );
      }
    } catch (_) {
      isSuccessful = false;
    }
    if (isSuccessful) {
      return myNumber;
    } else {
      return null;
    }
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
    if (typeReduced == NumberQType.integer) {
      try {
        _inDouble = _integerReduced == null
            ? null
            : (signalValue * _integerReduced!).toDouble();
      } catch (e) {
        print('Erro em integer');
      }
    }
    if (typeReduced == NumberQType.decimal) {
      _inDouble = (signalValue *
          (_integerReduced! + _fractionNumReduced! / _fractionDenReduced!));
    }
    if (typeReduced == NumberQType.fraction) {
      _inDouble = signalValue * _fractionNumReduced! / _fractionDenReduced!;
    }
    if (typeReduced == NumberQType.mixed) {
      _inDouble = (signalValue *
          (_integerReduced! + _fractionNumReduced! / _fractionDenReduced!));
    }
  }

  void setType() {
    //original
    if (decimal == null && fractionNum == null && fractionDen == null) {
      _type = NumberQType.integer;
    } else if (fractionNum == null && fractionDen == null) {
      _type = NumberQType.decimal;
    } else if (integer == null && fractionNum != null && fractionDen != null) {
      _type = NumberQType.fraction;
    } else {
      _type = NumberQType.mixed;
    }
    //reduced
    if (decimal == null &&
        _fractionNumReduced == null &&
        _fractionDenReduced == null) {
      _typeReduced = NumberQType.integer;
    } else if (_fractionNumReduced == null && _fractionDenReduced == null) {
      _typeReduced = NumberQType.decimal;
    } else if (_integerReduced == null &&
        _fractionNumReduced != null &&
        _fractionDenReduced != null) {
      _typeReduced = NumberQType.fraction;
    } else {
      _typeReduced = NumberQType.mixed;
    }
  }

  int get signalValue {
    if (signal == NumberQSignal.positive) {
      return 1;
    } else {
      return -1;
    }
  }

  String get signalSymbol {
    if (signal == NumberQSignal.positive) {
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

  NumberQType? get type {
    return _type;
  }

  NumberQType? get typeReduced {
    return _typeReduced;
  }

  String toStringReduced() {
    String myNumber = '';
    if (typeReduced == NumberQType.integer) {
      myNumber += '$signalSymbol$integerReduced';
    }
    if (typeReduced == NumberQType.decimal) {
      myNumber += '$signalSymbol$integerReduced.$decimal';
    }
    if (typeReduced == NumberQType.fraction) {
      myNumber += '$signalSymbol$fractionNumReduced/$_fractionDenReduced';
    }
    if (typeReduced == NumberQType.mixed) {
      myNumber +=
          '$signalSymbol$integerReduced $fractionNumReduced/$_fractionDenReduced';
    }
    return myNumber;
  }

  String toStringOrigin() {
    String myNumber = '';
    // MyNumberType typeTemp;
    // if (decimal == null && fractionNum == null && fractionDen == null) {
    //   typeTemp = MyNumberType.integer;
    // } else if (fractionNum == null && fractionDen == null) {
    //   typeTemp = MyNumberType.decimal;
    // } else if (integer == null && fractionNum != null && fractionDen != null) {
    //   typeTemp = MyNumberType.fraction;
    // } else {
    //   typeTemp = MyNumberType.mixed;
    // }

    if (type == NumberQType.integer) {
      myNumber += '$signalSymbol$integer';
    }
    if (type == NumberQType.decimal) {
      myNumber += '$signalSymbol$integer.$decimal';
    }
    if (type == NumberQType.fraction) {
      myNumber += '$signalSymbol$fractionNum/$fractionDen';
    }
    if (type == NumberQType.mixed) {
      myNumber += '$signalSymbol$integer $fractionNum/$fractionDen';
    }
    return myNumber;
  }

  NumberQ copyWith({
    NumberQSignal? signal,
    int? integer,
    int? decimal,
    int? fractionNum,
    int? fractionDen,
  }) {
    return NumberQ(
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

    return other is NumberQ &&
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
    return 'MyNumber(signal: $signal, integer: $integer, decimal: $decimal, fractionNum: $fractionNum, fractionDen: $fractionDen, _type: $_type _integerReduced: $_integerReduced, _fractionNumReduced: $_fractionNumReduced, _fractionDenReduced: $_fractionDenReduced, _typeReduced: $_typeReduced _inDouble: $_inDouble)';
  }

  NumberQ operator +(NumberQ num2) {
    //print('+++ sum +++');
    NumberQ output = NumberQ();
    if (type == NumberQType.integer && num2.type == NumberQType.integer) {
      int? integerTemp = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) +
              num2.signalValue * (num2.integerReduced ?? 0);
      NumberQSignal signal = integerTemp != null && integerTemp < 0
          ? NumberQSignal.negative
          : NumberQSignal.positive;
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
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
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

  NumberQ operator -(NumberQ num2) {
    NumberQ output = NumberQ();
    if (type == NumberQType.integer && num2.type == NumberQType.integer) {
      int? integerTemp = (integerReduced == null) && num2.integerReduced == null
          ? null
          : signalValue * (integerReduced ?? 0) -
              num2.signalValue * (num2.integerReduced ?? 0);
      NumberQSignal signal = integerTemp != null && integerTemp < 0
          ? NumberQSignal.negative
          : NumberQSignal.positive;
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
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
    output = output.copyWith(
      fractionNum: fnum.abs(),
      fractionDen: fden,
      signal: signal,
    );
    return output;
  }

  NumberQ operator *(NumberQ num2) {
    NumberQ output = NumberQ();
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
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
      integer: fden == 1 ? fnum : null,
      fractionNum: fden == 1 ? null : fnum,
      fractionDen: fden == 1 ? null : fden,
      signal: signal,
    );
    return output;
  }

  NumberQ operator /(NumberQ num2) {
    NumberQ output = NumberQ();
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
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
      integer: fden == 1 ? fnum : null,
      fractionNum: fden == 1 ? null : fnum,
      fractionDen: fden == 1 ? null : fden,
      signal: signal,
    );
    return output;
  }

  NumberQ operator ^(NumberQ num2) {
    if (num2.type != NumberQType.integer &&
        num2.signal != NumberQSignal.positive) {
      throw Exception('Expoente precisa ser inteiro e positivo');
    }
    NumberQ output = NumberQ();
    if (type == NumberQType.integer) {
      output = output.copyWith(
          integer: pow(integerReduced!, num2.integerReduced!).toInt());
      return output;
    }
    int f1num = (fractionDenReduced ?? 1) * (integerReduced ?? 0) +
        (fractionNumReduced ?? 0);
    int f1den = fractionDenReduced ?? 1;

    int fnum = pow(signalValue * f1num, num2.integerReduced!).toInt();
    int fden = pow(f1den, num2.integerReduced!).toInt();
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
    fnum = fnum.abs();
    output = output.copyWith(
      signal: signal,
      fractionNum: fnum,
      fractionDen: fden,
    );
    return output;
  }

  NumberQ operator &(NumberQ num2) {
    if (num2.type != NumberQType.integer &&
        num2.signal != NumberQSignal.positive) {
      throw Exception('Raiz precisa ser inteiro e positivo');
    }
    NumberQ output = NumberQ();

    if (type == NumberQType.integer) {
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
    NumberQSignal signal =
        fnum < 0 ? NumberQSignal.negative : NumberQSignal.positive;
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
