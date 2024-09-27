List<int> runOperation(String choice, List<int> numbers) {
  final operations = {
    '1': bubbleSort,
    '2': inversi,
    '3': shuffleList,
  };

  return operations[choice]!(numbers);
}

List<int> bubbleSort(List<int> list) {
  List<int> sortedList = List.from(list);  
  int n = sortedList.length;
  bool swapped = true; 

  int i = 0;  

  while (swapped && i < n - 1) {
    swapped = false;  

    _bubbleSortPass(sortedList, 0, n - i - 1, () {
      swapped = true;
    });

    i++;
  }

  return sortedList;
}

void _bubbleSortPass(List<int> list, int index, int end, Function swapAction) {
  index == end
      ? null
      : list[index] > list[index + 1]
          ? () {
              int temp = list[index];
              list[index] = list[index + 1];
              list[index + 1] = temp;
              swapAction(); 
              _bubbleSortPass(list, index + 1, end, swapAction); 
            }()
          : _bubbleSortPass(list, index + 1, end, swapAction); 
}

List<int> inversi(List<int> list) {
  return List.from(list.reversed);
}

List<int> shuffleList(List<int> list) {
  List<int> shuffledList = List.from(list);
  shuffledList.shuffle();
  return shuffledList;
}
