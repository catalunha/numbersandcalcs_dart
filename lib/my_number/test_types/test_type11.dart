import '../create_file.dart';
import '../number_q.dart';

void testType11() {
  print('+++ testType11');

  List<int> percents = [];
  for (var i = 1; i < 100; i++) {
    percents.add(i);
  }
  var fileOpen = createFile('type11_percentToFraction');
  fileOpen.writeln('Lista com : ${percents.length}');
  for (var percent in percents) {
    NumberQ numberQ =
        NumberQ(integer: 0, decimal: percent.toString().padLeft(2, '0'));
    fileOpen.writeln('$percent % = ${numberQ.toStringFraction()}');
  }
  fileOpen.close();
}
