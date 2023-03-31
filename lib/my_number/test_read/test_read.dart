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
  ];
  print('identificando erros');
  // print('4 1/2'.split(' ').length > 1);
  // return;

  return;
  print('identificando tipo');
  for (var e in res) {
    if (!e.contains(' ') && !e.contains('.') && !e.contains('/')) {
      print('$e Is integer');
    }
    if (!e.contains(' ') && e.contains('/')) {
      print('$e Is fraction');
    }
    if (e.contains(' ') && e.contains('/')) {
      print('$e Is mixed');
    }
  }
}
