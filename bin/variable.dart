void main() {
  // // menggunakan tipe data denga format : tipeData namaVariable = value;
  // String nama = 'Kadek Pramartha Mahottama';

  // // tipe data var digunakan untuk membuat sudatu variable bisa disesuaikan sesuai nilai valuenya secara otomatis
  // var firstName = 'Kadek';
  // var number = 12;

  // //tipe data final digunakan untuk memastikan suatu variable hanya bisa di deklarasikan satu kali saja
  // final lastName = 'Mahottama';

  // print('\n');
  // print(nama);
  // print(number);
  // print(firstName);
  // print(lastName);

  // print(
  //     ' ------------------------------------------------------------------------------------------------ \n');
  // //PERCOBAAN MERUBAH NILAI (Variable lastName hanya dapat dideklarasikan 1 kali karena tipe datanya final)
  // nama = 'Budi';
  // firstName = 'Santoso';
  // number = 15;
  // // lastName = 'Setiawan';

  // print(nama);
  // print(number);
  // print(firstName);
  // print(lastName);

  // //tipe data const merupakan tipe data yang membuat namaVariable tidak dapat di deklarasikan ulang dan value di dalamnya juga tidak dapat di rubah
  // const array1 = [1, 2, 3];
  // final array2 = [1, 2, 3];

  // print(array1);
  // print(array2);

  // //tipe data const dan finale tidak dapat di deklarasikan lebih dari satu kali. Karena keduanya merupakan array maka jika kita mmendeklarasikannya lagi seperti ini maka dart akan error.
  // // array1[0] = [8];
  // // array2[0] = [8];
  // // array1 = [0, 0, 0];
  // // array2 = [0, 0, 0];

  // //tipe data const juga memastika isi di dalam array tidak dapat di rubah pada eleme apa saja
  // // array1[1] = 8;

  // //tipe data finale masih mengizinkan perubahan pada value di dalam sebuah variable
  // array2[1] = 8;

  // print(array1);
  // print(array2);

  //late value membuat sebuah variable dapat di delkarasikan terlebih dahulu tetapi tidak akan di eksekusi ketika tidak diperlukanberikut contohnya
  //ketika sebuah variable dikenakan late maka dia akan di eksekusi hanya ketika variable tersebut dipanggil atau di butuhkan, bukan saat variable tersebut di buat atau di deklarasikan
  print('\n');
  var value1 = getValue1();
  print("variable sudah di buat");
  print(value1);
  print(
      '======================================================================');
  late var value2 = getValue2();
  print("variable sudah di buat");
  print(value2);
}

String getValue1() {
  print('getValue1() dipanggil');
  return 'Pramartha';
}

String getValue2() {
  print('getValue2() dipanggil');
  return 'Mahottama';
}
