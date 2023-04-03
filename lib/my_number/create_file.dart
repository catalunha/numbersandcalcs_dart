import 'dart:io';

import 'package:intl/intl.dart';

IOSink createFile(String name) {
  final dateFormat = DateFormat('yMMdd-HHmm');

  var pathFileName =
      'lib/output_files/${name}_${dateFormat.format(DateTime.now())}.txt';
  if (File(pathFileName).existsSync()) File(pathFileName).deleteSync();
  var fileOpen = File(pathFileName).openWrite(mode: FileMode.append);
  return fileOpen;
}
