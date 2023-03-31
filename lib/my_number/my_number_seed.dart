enum MyNumberType { integer, decimal, fraction, mixed }

enum MyNumberSignal { positive, negative }

class MyNumberSeed {
  final MyNumberType? type;
  final List<MyNumberSignal>? signal;
  final List<int>? integerList;
  final List<int>? decimaList;
  final List<int>? fractionNumList;
  final List<int>? fractionDenList;
  MyNumberSeed({
    required this.type,
    this.signal,
    this.integerList,
    this.decimaList,
    this.fractionNumList,
    this.fractionDenList,
  }) {
    checkData();
  }

  void checkData() {
    if (!(type == MyNumberType.integer &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList == null &&
        fractionNumList == null &&
        fractionDenList == null)) {
      throw Exception('Dados não são do tipo $type');
    }
    if (!(type == MyNumberType.decimal &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList != null &&
        decimaList!.isNotEmpty &&
        fractionNumList == null &&
        fractionDenList == null)) {
      throw Exception('Dados não são do tipo $type');
    }
    if (!(type == MyNumberType.fraction &&
        integerList == null &&
        decimaList == null &&
        fractionNumList != null &&
        fractionNumList!.isNotEmpty &&
        fractionDenList != null &&
        fractionDenList!.isNotEmpty)) {
      throw Exception('Dados não são do tipo $type');
    }
    if (!(type == MyNumberType.mixed &&
        integerList != null &&
        integerList!.isNotEmpty &&
        decimaList == null &&
        fractionNumList != null &&
        fractionNumList!.isNotEmpty &&
        fractionDenList != null &&
        fractionDenList!.isNotEmpty)) {
      throw Exception('Dados não são do tipo $type');
    }
  }
}
