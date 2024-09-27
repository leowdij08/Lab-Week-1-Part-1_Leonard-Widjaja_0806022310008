import 'dart:io';

String getUserChoice() {
  String choice = ''; 
  
  while (choice != '1' && choice != '2' && choice != '3') {
    print('Pilih operasi:');
    print('1. Bubble Sort');
    print('2. Inversi');
    print('3. Shuffle');
    choice = stdin.readLineSync() ?? '';  

    if (choice != '1' && choice != '2' && choice != '3') {
      print('Maaf, pilihan anda tidak tersedia. Silakan coba lagi.');
    }
  }

  return choice;  
}
