import '../create_file.dart';
import '../number_q.dart';

void testType10() {
  print('+++ testType10');

  List<int> percents = [];
  for (var i = 1; i < 100; i++) {
    percents.add(i);
  }
  var fileOpen = createFile('type10_percentToDecimal');
  fileOpen.writeln('Lista com : ${percents.length}');
  for (var percent in percents) {
    NumberQ numberQ =
        NumberQ(integer: 0, decimal: percent.toString().padLeft(2, '0'));
    fileOpen.writeln('$percent % = ${numberQ.toStringReduced()}');
  }
  fileOpen.close();
}
