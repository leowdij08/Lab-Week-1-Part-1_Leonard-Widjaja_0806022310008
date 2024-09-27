import 'dart:math';

List<int> bubbleSort(List<int> list) {
  return _bubbleSortRec(list, list.length);
}

List<int> _bubbleSortRec(List<int> list, int n) {
  return (n == 1) ? list : _bubbleSortRec(_bubbleSortPass(list, 0, n), n - 1);
}

List<int> _bubbleSortPass(List<int> list, int i, int n) {
  if (i == n - 1) return list;

  list = (list[i] > list[i + 1]) 
    ? _swap(list, i) 
    : list;

  return _bubbleSortPass(list, i + 1, n); 
}

List<int> _swap(List<int> list, int i) {
  var temp = list[i];
  list[i] = list[i + 1];
  list[i + 1] = temp;
  return list;
}

List<int> inversion(List<int> list) {
  return List.from(list.reversed);
}

List<int> shuffleNumbers(List<int> list) {
  var rng = Random();
  return List.from(list)..shuffle(rng);
}
