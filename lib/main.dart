import 'dart:io';
import 'dart:math';
import 'operations.dart';
import 'pyramid.dart';
import 'user_choice.dart';
import 'utils.dart';

void main() {
  print('Masukkan jumlah angka yang ingin dicetak:');
  int input = int.parse(stdin.readLineSync()!);

  List<int> numbers = List.generate(input, (_) => Random().nextInt(100));
  print('Angka yang di-generate: $numbers');

  String choice = getUserChoice();

  List<int> result = measureExecutionTime((list) {
    return runOperation(choice, list); 
  }, numbers, 'Operasi Pilihan');

  print('Hasil: $result');  

  askPyramid(result);
}
