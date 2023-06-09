import 'number_q.dart';

// enum NumberQType { integer, decimal, fraction, mixed, percent }

class NumberQSeed {
  final NumberQType? type;
  final List<NumberQSignal>? signalList;
  final List<int>? integerList;
  final List<String>? decimaList;
  final List<int>? fractionNumList;
  final List<int>? fractionDenList;
  final List<int>? percentList;
  NumberQSeed({
    required this.type,
    this.signalList,
    this.integerList,
    this.decimaList,
    this.fractionNumList,
    this.fractionDenList,
    this.percentList,
  }) {
    checkData();
  }

  // List<NumberQ> exportPercentAsFraction() {
  //   List<NumberQ> myNumberList = [];
  //   for (var percent in percentList!) {
  //     if (percent < 1 || percent > 99) {
  //       throw Exception('Valor de porcentagem deve ficar entre 1 e 99');
  //     }
  //     myNumberList.add(NumberQ(
  //       fractionNum: percent,
  //       fractionDen: 100,
  //     ));
  //   }
  //   return myNumberList;
  // }

  // List<NumberQ> exportPercentAsDecimal() {
  //   List<NumberQ> myNumberList = [];
  //   for (var percent in percentList!) {
  //     if (percent < 1 || percent > 99) {
  //       throw Exception('Valor de porcentagem deve ficar entre 1 e 99');
  //     }
  //     myNumberList.add(NumberQ(
  //       integer: 0,
  //       decimal: percent.toString().padLeft(3, '0'),
  //     ));
  //   }
  //   return myNumberList;
  // }

  List<NumberQ> exportList(
      {List<int> multipleList = const [1], bool shuffleMultipleList = false}) {
    List<NumberQ> myNumberList = [];
    List<NumberQSignal>? signalListTemp =
        signalList ?? [NumberQSignal.positive];
    if (type == NumberQType.integer) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          myNumberList.add(NumberQ(
            signal: signal,
            integer: integer,
          ));
        }
      }
    }
    if (type == NumberQType.decimal) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          for (var decimal in decimaList!) {
            myNumberList.add(NumberQ(
              signal: signal,
              integer: integer,
              decimal: decimal,
            ));
          }
        }
      }
    }
    if (type == NumberQType.fraction) {
      for (var signal in signalListTemp) {
        for (var fractionNum in fractionNumList!) {
          for (var fractionDen in fractionDenList!) {
            if (shuffleMultipleList) {
              multipleList.shuffle();
            }
            for (var muliple in multipleList) {
              myNumberList.add(NumberQ(
                signal: signal,
                fractionNum: fractionNum * muliple,
                fractionDen: fractionDen * muliple,
              ));
            }
          }
        }
      }
    }
    if (type == NumberQType.mixed) {
      for (var signal in signalListTemp) {
        for (var integer in integerList!) {
          for (var fractionNum in fractionNumList!) {
            for (var fractionDen in fractionDenList!) {
              myNumberList.add(NumberQ(
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
    if (type == NumberQType.integer) {
      if (!(integerList != null &&
          integerList!.isNotEmpty &&
          decimaList == null &&
          fractionNumList == null &&
          fractionDenList == null)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == NumberQType.decimal) {
      if (!(integerList != null &&
          integerList!.isNotEmpty &&
          decimaList != null &&
          decimaList!.isNotEmpty &&
          fractionNumList == null &&
          fractionDenList == null)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == NumberQType.fraction) {
      if (!(integerList == null &&
          decimaList == null &&
          fractionNumList != null &&
          fractionNumList!.isNotEmpty &&
          fractionDenList != null &&
          fractionDenList!.isNotEmpty)) {
        throw Exception('Dados não são do tipo $type');
      }
    }
    if (type == NumberQType.mixed) {
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
