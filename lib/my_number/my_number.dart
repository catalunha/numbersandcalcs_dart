import 'dart:math';

enum MyNumberType { integer, decimal, fraction, mixed }

enum MyNumberSignal { positive, negative, aleatory }

class MyNumber {
  final MyNumberSignal signal;
  final int? integer;
  final int? decimal;
  final int? fractionNum;
  final int? fractionDen;
  int? _integerReduced;
  int? _fractionNumReduced;
  MyNumberType? _type;
  MyNumber({
    // this.type = MyNumberType.integer,
    this.signal = MyNumberSignal.positive,
    this.integer,
    this.decimal,
    this.fractionNum,
    this.fractionDen,
  }) {
    setType();
    simplifyFraction();
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

  // int get integerValue {
  //   // if (type == MyNumberType.integer) {
  //   //   return integer ?? 1;
  //   // } else if (type == MyNumberType.decimal) {
  //   //   return integer ?? 1;
  //   // }
  //   return integer ?? 0;
  // }

  // int get decimalValue {
  //   if (type == MyNumberType.decimal) {
  //     return decimal ?? 1;
  //   }
  //   return decimal ?? 0;
  // }

  // int get fractionNumValue {
  //   // if (type == MyNumberType.fraction) {
  //   //   return fractionNum ?? 1;
  //   // }
  //   return fractionNum ?? 0;
  // }

  // int get fractionDenValue {
  //   // if (type == MyNumberType.fraction) {
  //   if (fractionDen == 0) {
  //     throw Exception('Fração nao pode ter denominador zero');
  //   }
  //   return fractionDen ?? 0;
  //   // }
  //   // return null;
  //   // return null;
  // }

  void simplifyFraction() {
    // print('Calc mixedReducer...');
    if (fractionNum != null && fractionDen != null) {
      if (fractionNum! > fractionDen!) {
        _fractionNumReduced = fractionNum! % fractionDen!;
        _integerReduced = (integer ?? 0) + fractionNum! ~/ fractionDen!;
      } else {
        _fractionNumReduced = fractionNum!;
        _integerReduced = integer;
      }
    }
  }

  int? get fractionNumReduced {
    return _fractionNumReduced;
  }

  int? get integerReduced {
    return _integerReduced;
  }

  MyNumberType get type {
    return _type!;
  }

  String toStringInteger() {
    return '$integer';
  }

  String toStringDecimal() {
    return '$integer.$decimal';
  }

  String toStringFraction() {
    return '$fractionNum/$fractionDen';
  }

  String toStringMixed() {
    return '$integer $fractionNum/$fractionDen';
  }

  String toStringMixedReduced() {
    return '$integerReduced $fractionNumReduced/$fractionDen';
  }

  String toStringType() {
    // String myNumber = signalSymbol;
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
      // myNumber += '$integer $fractionNum/$fractionDen';
      myNumber +=
          '$signalSymbol$integerReduced $fractionNumReduced/$fractionDen';
    }
    // if (type == MyNumberType.mixedReduced) {
    //   reduce();
    // }
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
        other._fractionNumReduced == _fractionNumReduced;
  }

  @override
  int get hashCode {
    return signal.hashCode ^
        integer.hashCode ^
        decimal.hashCode ^
        fractionNum.hashCode ^
        fractionDen.hashCode ^
        _integerReduced.hashCode ^
        _fractionNumReduced.hashCode;
  }

  @override
  String toString() {
    return 'MyNumber(signal: $signal, integer: $integer, decimal: $decimal, fractionNum: $fractionNum, fractionDen: $fractionDen, _integerReduced: $_integerReduced, _fractionNumReduced: $_fractionNumReduced, _type:$_type)';
  }
}
