void main() {
  //tipe data number di dart ada 2 yaitu int dan double
  int bilanganBulat = 10;
  double bilanganDesimal = 10.5;

  print(bilanganBulat);
  print(bilanganDesimal);

  //tipe data num merupakan tipe data yang lebih fleksible dimana variable bisa diisi dengan int ataupun desimal
  num bilangan;

  bilangan = 10;
  print(bilangan);

  bilangan = 123.4;
  print(bilangan);

  //tipe data boolean merupakan tipe data yang memiliki dua buah nilai yaitu true dan false
  bool finish;

  finish = true;
  print(finish);

  finish = false;
  print(finish);

  /**
   * tipe data string merupakan tipe data yang menyimpan kata atau kalimat.
   * di dart tipe data ini bisa di tulis dengan petik satu ('') atau petik dua ("")
   * tetapi lebih disarankan menggunakan petik satu
   */
  String makanan1 = 'nasi goreng';
  String makanan2 = "capcay";

  print(makanan1);
  print(makanan2);

  /**String interpolation merupakan cara untuk menggabungkan lebih dari satu tipe data string
   * Ketika menuliskan string interpolation dapat menggunakan dua format yaitu
   * Format sederhana : $namaVariable
   * Format Kompleks  : ${namaVariable}
   * Keduanya bisa saja digunakan, tetapi dalam keadaan seperti hanya mengambil nama variable saja maka bisa menggunakan format sederhana
  */

  var paket1 = '$makanan1 dan ${makanan2}';
  print(paket1);

  var harga1 = 10000;
  var harga2 = 5000;
  print('Total harga: $harga1 + $harga2'); // Output: Total harga: 5000 + 3000
  print('Total harga: ${harga1 + harga2}');

  //untuk menggunakan sebuah simbol yang memiliki makna di dalam string seperti /, '', ""
  //dapat menggunakan BackSlash contohnya seperti \/, \', \"
  print('\'Dart\' so \$Cool\$');

  /**untuk menggabungkan string dapat dilakukan dengan dua cara yaitu dengan menambahkan string tersebut
   * atau bisa juga dengan menambahkan karakter whitespcae seperti spasi, enter, atau tab
  */

  String makanan3 = 'bakpao';
  String makanan4 = "capcay";

  String text1 = makanan3 + makanan4;
  String text2 = 'Kadek' 'Pramartha' 'Mahottama';

  print(text1);
  print(text2);
  //jika ingin menambahkan spasi bisa dilakukan dengan menambah spasi pada kata stringnya
  text1 = makanan3 + " " + makanan4;
  text2 = 'Kadek' ' Pramartha' ' Mahottama';

  print(text1);
  print(text2);

  //Sting juga dapat dituliskkan dengan multiline string dengan cara menggunakan petik satu ('') atau petik dua ("") sebanyak 3 kali di awal dan akhir string
  //jika terdapat enter maka hilangkan pada bagian awal kata atau kalimatnya di tullisan
  String longString = """
    ini contoh
    menggunakan longString
  di Dart
    """;

  print(longString);

  //tipe data dynamic merupakan merupakan tipe data yang dapat menampung semua jenis tipe data
  //tipe data var yang tidak di deklarasikan value di dalam variablenya juga merupakan tipe data dynamic
  dynamic variable;
  var contoh;

  variable = 100;
  print(variable);
  print(contoh);

  variable = true;
  print(variable);

  variable = 'junaedi';
  print(variable);

  ///Konversi Tipa Data Di Dart
  /**
   * Untuk melakukan konversi tipe data dari Number, Boolean ke String bisa menggunakan method atau function toString()
   * Untuk melakukan konversi tipe data dari String ke Number bisa menggunakan method atau function parse()
   * Untuk melakukan konversi tipe data dari Number ke Number lainnya bisa menggunakan method atau function toInt() atau toDouble()
   * Untuk melakukan konversi tipe data dari String ke Boolean bisa menggunakan operator perbandingan
   * NB : jika isi dari string merupakan sebuah kalimat atau kata dan dirubah ke number maka akan invalid
   */

  var inputString = '1000';
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  print(inputString);
  print(inputInt);
  print(inputDouble);

  var integerToDouble = inputInt.toDouble();
  var doubleToInt = inputDouble.toInt();

  var intToString = inputInt.toString();
  var doubleToString = inputDouble.toString();

  print(integerToDouble);
  print(doubleToInt);
  print(intToString);
  print(doubleToString);

  var string = 'true';
  var inputBoolean = string == 'true';

  var booleanToString = inputBoolean.toString();

  print(inputBoolean);
  print(booleanToString);
}
