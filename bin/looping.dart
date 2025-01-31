import 'dart:io';

void main() {
  /**
   * For Loop Sederhana Membuat Piramida
   *   for (var i = 0; i <= 5; i++) {
   *     for (var j = 0; j < i; j++) {
   *       stdout.write('*');
   *     }
   *     print(' ');
   *   }
   */

  ///For Loop
  /**
   * For loop merupakan perulangan yang akan menjalankan perulangan selama kondisi masih terpeuhi
   * Sintaks:
   * For(init statement; condition; post statement){
   *  //code
   * }
   * NB : init statement, condition, dan post statement tidak wajib di isi. Jika condition tidak di isi maka perulangan akan terus berjalan tanpa henti.
   */
  for (var i = 0; i < 10; i++) {
    print('Perulangan ke-${i + 1}');
  }

  //KODE BERBAHAYA, BISA MENYEBABKAN KOMPUTER CRASH. HATI-HATI
  // for (;;) {
  //   print('Ulangi Lagi!');
  // }

  ///While Loop
  /**
   * While merupakan perulangan mirip for tetapi lebih sederhana
   * Sintaks:
   * While(condition){
   *  //code
   *  //increment/decrement agar tidak terjadi infinit loop
   * }
   */
  var counter = 0;
  while (counter < 10) {
    print('While Loop ke-${counter + 1}');
    counter++;
  }

  ///Do-While Loop
  /**
   * mirip seperti while, tetapi pengecekan kondisi dilakukan di akhir
   * sehingga perulangan akan selalu dilakukan minimal sekali
   */
  var number = 0;
  do {
    print('ini ke-$number');
    number++;
  } while (number > 10);

  ///Break and Continue
  /**
   * Break digunakan untuk menghentikan suatu case bisa dalam perulangan maupun pengkondisian
   * Dalam perulangan jika menemui kata kunci "Break" maka perulangan akan langsung di hentikan dan keluar dari perulangan. Tidak peduli jika kondisi masih bernilai benar
   * Continue digynakan untuk 
   */
  var test = 0;
  while (true) {
    print('Perulangan ke-$test');
    test++;

    if (test > 5) {
      break;
    }
  }

  var odd = 0;
  while (odd < 20) {
    if (odd % 2 == 0) {
      odd++;
      continue;
    }

    print(odd);
    odd++;
  }

  ///For In
  /**
   * Dalam bahasa dart terdapat cara untuk mempermudah dalam mengakses setiap data yang ada di dalam suatu list/set
   * For in dapat digunakan untuk melakukan perulangan untuk mengakses setaip data di dalam list/set
   * Sintaks:
   * For (tipeDataAlias namaAlias in namaList){
   *  //code
   * }
   */

  var array1 = <String>['Budi', 'Ujang', 'Made'];

  //Cara mengakses tanpa For in
  for (var i = 0; i < array1.length; i++) {
    print(array1[i]);
  }

  print(' ');

  //Menggunakan For In
  for (var names in array1) {
    print(names);
  }
}
