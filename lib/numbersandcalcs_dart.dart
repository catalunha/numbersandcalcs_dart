void calculate() {
  List<int> list1 = [1, 2];
  // List<int> list1 = [1, 2, 3];
  String operation = '+';
  List<int> list2 = [1, 2, 3];
  // List<int> list2 = [1, 2];
  List<int> ans = [];
  int amount = 1;
  for (var n1 in list1) {
    for (var n2 in list2) {
      // print('$n1 $operation $n2');
      int ans = n1 + n2;
      print('$n1 $operation $n2 = $ans');
    }
  }
}
