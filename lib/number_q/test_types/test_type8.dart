import 'dart:math';

import 'package:numbersandcalcs_dart/number_q/proportion.dart';

import '../create_file.dart';

void testType8() {
  print('+++ testType8');
  int count = 0;
  var fileOpen = createFile('type8_solveProportion');
  for (var v1 = 1; v1 < 100; v1++) {
    for (var v2 = 1; v2 < 100; v2++) {
      for (var v3 = 1; v3 < 100; v3++) {
        Proportion proportion = Proportion(
          value1: v1,
          value2: v2,
          value3: v3,
          positionVar: Random().nextInt(4) + 1,
        );
        int? solved = proportion.solve();
        if (solved != null) {
          fileOpen.writeln('${proportion.toStringFormated()} .: a = $solved');
        }
      }
    }
  }
  fileOpen.close();
}
