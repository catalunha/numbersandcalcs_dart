import 'package:numbersandcalcs_dart/my_number/my_number.dart';

void testRead() {
  print('testRead');
  List<String> res = [
    '+1',
    '+1.1',
    '+12/123',
    '+1 12/123',
    '-3',
    '-3.1',
    '-312/123',
    '-3 12/123',
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
/*
  for (var e in res) {
    bool isSuccessful = true;
    MyNumber myNumber = MyNumber();
    try {
      var parts = e.split(' ');
      if (parts.length == 1) {
        String partUnic = parts[0];
        if (!partUnic.contains('.') && !partUnic.contains('/')) {
          //print('$parte Is integer');
          int a = int.parse(partUnic);
          myNumber = myNumber.copyWith(integer: a);
        } else if (partUnic.contains('.')) {
          //print('$parte Is decimal');
          var partsDec = partUnic.split('.');
          int a = int.parse(partsDec[0]);
          int b = int.parse(partsDec[1]);
          myNumber = myNumber.copyWith(integer: a, decimal: b);
        } else if (partUnic.contains('/')) {
          //print('$parte Is fração');
          var partsFrac = partUnic.split('/');
          int a = int.parse(partsFrac[0]);
          int b = int.parse(partsFrac[1]);
          myNumber = myNumber.copyWith(fractionNum: a, fractionDen: b);
        }
      } else {
        String partInt = parts[0];
        int a = int.parse(partInt);
        List<String> partFrac = parts[1].split('/');
        String partNum = partFrac[0];
        String partDen = partFrac[1];
        int b = int.parse(partNum);
        int c = int.parse(partDen);
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
  */
  for (var e in res) {
    NumberQ? myNumber = NumberQ.strint2MyNumber(e);
    if (myNumber != null) {
      print('$e conversão Ok. Com $myNumber');
    } else {
      print('$e conversão Failure.');
    }
  }
}
