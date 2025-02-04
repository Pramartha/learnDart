import 'dart:io';

num add(listNumber) {
  num result = 0;

  for (var i = 0; i < listNumber.length; i++) {
    result += listNumber[i];
  }

  return result;
}

num substract(listNumber) {
  num result = 0;

  for (var i = 0; i < listNumber.length; i++) {
    result -= listNumber[i];
  }

  return result;
}

num multipplication(listNumber) {
  num result = listNumber[0];

  for (var i = 1; i < listNumber.length; i++) {
    result *= listNumber[i];
  }

  return result;
}

num divide(listNumber) {
  num result = listNumber[0];

  for (var i = 1; i < listNumber.length; i++) {
    if (listNumber[i] == 0) {
      print('Tidak Bisa membagi dengan 0');
      return 0;
    } else {
      result /= listNumber[i];
    }
  }

  return result;
}

num mod(listNumber) {
  num result = listNumber[0];

  for (var i = 1; i < listNumber.length; i++) {
    result %= listNumber[i];
  }

  return result;
}

void main(List<String> args) {
  int length;
  stdout.write('Anda ingin menginput berapa bilangan? : ');
  while (true) {
    var input = stdin.readLineSync();

    try {
      length = int.parse(input!);
      break;
    } catch (e) {
      print('input harus berupa angka');
    }

    if (input == null) {
      print('Jumlah bilangan tidak bisa null');
    }
  }

  var listNumber = <int>[];
  print('Silahkan input sebanyak $length bilangan');
  for (var i = 0; i < length; i++) {
    while (true) {
      print('Angka ke-${i + 1} : ');
      String? numberInput = stdin.readLineSync();

      try {
        int number = int.parse(numberInput!);
        listNumber.add(number);
        break;
      } catch (e) {
        print('Anda hanya dapat menginputkan angka');
      }
    }
  }
  print(' ');
  print('Operasi apa yang anda inginkan?');
  print('===============================');
  print('Ketik "1" untuk Penjumlahan (+)');
  print('Ketik "2" untuk Pengurangan (-)');
  print('Ketik "3" untuk Perkalian   (*)');
  print('Ketik "4" untuk Pembagian   (/)');
  print('Ketik "5" untuk Modulus     (%)');
  print('===============================');
  stdout.write('Ketik Angka : ');
  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      num hasil = add(listNumber);
      print(' ');
      print('Hasil Penjumalahan : $hasil');
      break;
    case 2:
      num hasil = substract(listNumber);
      print(' ');
      print('Hasil Pengurangan : $hasil');
      break;
    case 3:
      num hasil = multipplication(listNumber);
      print(' ');
      print('Hasil Perkalian : $hasil');
      break;
    case 4:
      num hasil = divide(listNumber);
      print(' ');
      print('Hasil Pembagian : $hasil');
      break;
    case 5:
      num hasil = mod(listNumber);
      print(' ');
      print('Hasil Modulus : $hasil');
      break;
    default:
      print('Pilihan tidak valid!');
  }
}
