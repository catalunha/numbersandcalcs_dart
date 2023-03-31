import 'my_number.dart';

class MyNumberSeed {
  final MyNumberType? type;
  final List<MyNumberSignal>? signalList;
  final List<int>? integerList;
  final List<int>? decimaList;
  final List<int>? fractionNumList;
  final List<int>? fractionDenList;
  MyNumberSeed({
    required this.type,
    this.signalList,
    this.integerList,
    this.decimaList,
    this.fractionNumList,
    this.fractionDenList,
  }) {
    checkData();
  }

  List<MyNumber> exportList() {
    List<MyNumber> myNumberList = [];
    List<MyNumberSignal>? signalListTemp =
        signalList ?? [MyNumberSignal.positive];
    if (type == MyNumberType.integer) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          myNumberList.add(MyNumber(
            signal: signal,
            integer: integer,
          ));
        }
      }
    }
    if (type == MyNumberType.decimal) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          for (var decimal in decimaList!) {
            myNumberList.add(MyNumber(
              signal: signal,
              integer: integer,
              decimal: decimal,
            ));
          }
        }
      }
    }
    if (type == MyNumberType.fraction) {
      for (var signal in signalListTemp) {
        for (var fractionNum in fractionNumList!) {
          for (var fractionDen in fractionDenList!) {
            myNumberList.add(MyNumber(
              signal: signal,
              fractionNum: fractionNum,
              fractionDen: fractionDen,
            ));
          }
        }
      }
    }
    if (type == MyNumberType.mixed) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          for (var fractionNum in fractionNumList!) {
            for (var fractionDen in fractionDenList!) {
              myNumberList.add(MyNumber(
                signal: signal,
                integer: integer,
                fractionNum: fractionNum,
                fractionDen: fractionDen,
              ));
            }
          }
        }
      }
    }
    // myNumberList.shuffle();
    return myNumberList;
  }

  void checkData() {
    if (type == MyNumberType.integer) {
      if (!(integerList != null &&
          integerList!.isNotEmpty &&
          decimaList == null &&
          fractionNumList == null &&
          fractionDenList == null)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == MyNumberType.decimal) {
      if (!(integerList != null &&
          integerList!.isNotEmpty &&
          decimaList != null &&
          decimaList!.isNotEmpty &&
          fractionNumList == null &&
          fractionDenList == null)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == MyNumberType.fraction) {
      if (!(integerList == null &&
          decimaList == null &&
          fractionNumList != null &&
          fractionNumList!.isNotEmpty &&
          fractionDenList != null &&
          fractionDenList!.isNotEmpty)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == MyNumberType.mixed) {
      if (!(integerList != null &&
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

  @override
  String toString() {
    return 'MyNumberSeed(type: $type, signal: $signalList, integerList: $integerList, decimaList: $decimaList, fractionNumList: $fractionNumList, fractionDenList: $fractionDenList)';
  }
}
