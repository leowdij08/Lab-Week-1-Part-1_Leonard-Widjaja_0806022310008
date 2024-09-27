import 'dart:io';

void askPyramid(List<int> result) {
  print('Apakah anda ingin mencetak piramida? (y/n)');
  String? choice = stdin.readLineSync();

  if (choice?.toLowerCase() == 'y') {
    printPyramid(result, result.length, 0);
  }
}

void printPyramid(List<int> list, int length, int row) {
  while (row < length) {
    printRow(list, length, row, 0);  
    print(''); 
    row++;  
  }
}

void printRow(List<int> list, int length, int row, int current) {
  current == length
      ? null 
      : current < (length - row - 1)
          ? () {
              stdout.write(' ');  
              printRow(list, length, row, current + 1);  
            }()
          : () {
              stdout.write('${list[current - (length - row - 1)]} ');  
              printRow(list, length, row, current + 1);  
            }();
}
