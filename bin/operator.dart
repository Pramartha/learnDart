void main() {
  // ///Operator Aritmatika
  // var first = 10;
  // var second = 3;

  // print(first + second); //penjumlahan
  // print(first - second); //pengurangan
  // print(first - -second); //menggunakan bilangan negatif
  // print(first * second); //perkalian
  // print(first / second); //pembagian
  // print(first ~/ second); //pembagian dengan hasil int
  // print(first % second); //modulo

  // ///Operator Perbandingan

  // /**
  //  * Operator perbandingan bisa digunakan untuk tipe data seperti number maupun string
  //  */
  // print(10 == 10); //sama dengan
  // print(10 != 10); //tidak sama dengan
  // print(10 >= 10); //lebih dari sama dengan
  // print(10 <= 10); //kurang dari sama dengan
  // print(10 > 10); //lebih dari
  // print(10 < 10); //kurang dari

  // ///Operator Penugasan
  // var a = 10;
  // a += 10; //sama dengan a = a + 10
  // print(a);

  // var b = 10;
  // b -= 10; //sama dengan b = b - 10
  // print(b);

  // var c = 10;
  // c *= 10; //sama dengan c = c * 10
  // print(c);

  // var d = 10.0;
  // d /= 10; //sama dengan d = d / 10
  // print(d);

  // var e = 10;
  // e ~/= 10; //sama dengan e = e ~/ 10
  // print(e);

  // var f = 10;
  // f %= 10; //sama dengan f = f *%10
  // print(f);

  // //Increment dan Decrement

  // /**
  //  * Post-increment (i++): Cetak dulu, baru tambah.
  //  * Pre-increment (++j): Tambah dulu, baru cetak.
  //  * Post-decrement (i--): Cetak dulu, baru kurangi.
  //  * Pre-decrement (--j): Kurangi dulu, baru cetak.
  //  */
  // var i = 1, j = 1;

  // print(i++);
  // print(++j);
  // print(i--);
  // print(--j);

  // ///Operator Logika
  // /**
  //  * Operator AND (&&)
  //  * Operator OR (||)
  //  * Operator NOT (!)
  //  */

  // var nilaiAkhir = 100;
  // var nilaiAbsen = 50;

  // var cekNilaiAKhir = nilaiAkhir >= 70;
  // var cekNilaiAbsen = nilaiAbsen >= 70;

  // var lulusAND = cekNilaiAKhir && cekNilaiAbsen;
  // var lulusOR = cekNilaiAKhir || cekNilaiAbsen;

  // print('Operator AND = $lulusAND');
  // print('Operator OR = $lulusOR');
  // print('Operator NOT dengan AND = ${!lulusAND}');

  ///Operator Type Test
  /**
   * Operator type test digunakan untuk mengecek tipe data dynamic dari suatu variable
   * as digunakan untuk memaksa tipe data dynamic berubah sesuai dengan yang di inginkan tetapi tidak bisa mengubah jika tidak sesuai
   * is bernilai true ketika tipe data sesuai dengan yang di tanya
   * is! bernilai true ketika tipe data tidak sesuai dengan yang di tanya
   */
  dynamic variable = 10;

  // var variableInt = variable as String; akan Error
  var variableInt = variable as int;

  print(variableInt);
  print(variable is int);
  print(variable is! int);
}
