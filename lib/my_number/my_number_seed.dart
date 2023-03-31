enum MyNumberType { integer, decimal, fraction, mixed }

enum MyNumberSignal { positive, negative }

class MyNumberSeed {
  MyNumberType? _type;
  final List<MyNumberSignal>? signal;
  final List<int>? integerList;
  final List<int>? decimaList;
  final List<int>? fractionNumList;
  final List<int>? fractionDenList;
  MyNumberSeed({
    this.signal,
    this.integerList,
    this.decimaList,
    this.fractionNumList,
    this.fractionDenList,
  }) {
    checkData();
  }

  void checkData() {
    if (!(_type == MyNumberType.integer &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList == null &&
        fractionNumList == null &&
        fractionDenList == null)) {
      throw Exception('Dados não são do tipo $_type');
    }
    if (!(_type == MyNumberType.decimal &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList != null &&
        decimaList!.isNotEmpty &&
        fractionNumList == null &&
        fractionDenList == null)) {
      throw Exception('Dados não são do tipo $_type');
    }
    if (!(_type == MyNumberType.fraction &&
        integerList == null &&
        decimaList == null &&
        fractionNumList != null &&
        fractionNumList!.isNotEmpty &&
        fractionDenList != null &&
        fractionDenList!.isNotEmpty)) {
      throw Exception('Dados não são do tipo $_type');
    }
    if (!(_type == MyNumberType.mixed &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList == null &&
        fractionNumList != null &&
        fractionNumList!.isNotEmpty &&
        fractionDenList != null &&
        fractionDenList!.isNotEmpty)) {
      throw Exception('Dados não são do tipo $_type');
    }
  }
}
