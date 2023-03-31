import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void testRead() {
  print('testRead');
  List<String> res = [
    '+1',
    '+1.1',
    '+12/123',
    '+1 12/123',
    '+2.1 1/2',
    '+2 1.2/2',
    '+2 1.1',
    '+2 1/',
    '+2 /2',
    '+2/',
    '+/2',
    '-+/2',
    '-1-',
  ];

  for (var e in res) {
    bool isSuccessful = true;
    MyNumber myNumber = MyNumber();
    try {
      var partes = e.split(' ');
      if (partes.length == 1) {
        String parte = partes[0];
        if (!parte.contains('.') && !parte.contains('/')) {
          //print('$parte Is integer');
          int a = int.parse(parte);
          myNumber = myNumber.copyWith(integer: a);
        } else if (parte.contains('.')) {
          //print('$parte Is decimal');
          var partesDec = e.split('.');
          int a = int.parse(partesDec[0]);
          int b = int.parse(partesDec[1]);
          myNumber = myNumber.copyWith(integer: a, decimal: b);
        } else if (parte.contains('/')) {
          //print('$parte Is fração');
          var partesDec = e.split('/');
          int a = int.parse(partesDec[0]);
          int b = int.parse(partesDec[1]);
          myNumber = myNumber.copyWith(fractionNum: a, fractionDen: b);
        }
      } else {
        String parteInt = partes[0];
        List<String> parteFrac = partes[1].split('/');
        String parteNum = parteFrac[0];
        String parteDen = parteFrac[1];
        int a = int.parse(parteInt);
        int b = int.parse(parteNum);
        int c = int.parse(parteDen);
        myNumber =
            myNumber.copyWith(integer: a, fractionNum: b, fractionDen: c);
      }
    } catch (_) {
      isSuccessful = false;
    }
    if (isSuccessful) {
      print('$e conversão $isSuccessful com $myNumber');
    } else {
      print('$e conversão $isSuccessful.');
    }
  }

  // print('identificando erros');
  // print('4 1/2'.split(' ').length > 1);
  // return;

  // return;
  // print('identificando tipo');
  // for (var e in res) {
  //   if (!e.contains(' ') && !e.contains('.') && !e.contains('/')) {
  //     print('$e Is integer');
  //   }
  //   if (!e.contains(' ') && e.contains('/')) {
  //     print('$e Is fraction');
  //   }
  //   if (e.contains(' ') && e.contains('/')) {
  //     print('$e Is mixed');
  //   }
  // }
}
