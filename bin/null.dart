void main() {
  ///Null
  /**
   * null merupakan suatu kondisi dimana nilai/value yang ada di dalam suatu variable tidak ada atau kosong (bukan 0)
   * untuk menuliskan suatu variable bisa null cukup dengan format tipeData? namaVariable
   */

  // int number1; //error
  int? number2;
  // print(number1); //error
  print(number2);

  ///Null Safety
  /**
   * Null Safety berkaitan dengan error : "null pointer exception"
   * Saat suatu data itu null dan mencoba untuk di akses maka akan terjadi error seperti sebelumnya
   * Jika suatu data yang nullable ingin di akses maka perlu dilakukan pengecekan terlebih dahulu
   *
   */

  int? bilanganGanjil = null;

  // double beDouble = bilanganGanjil.toDouble(); akan error karena data bisa saja bernilai null
  // gunakan pengecekan dengan if condition
  if (bilanganGanjil != null) {
    double beDouble = bilanganGanjil.toDouble();
    print(beDouble);
  }

  ///Nullable to Non-Nullable
  /**
   * untuk mengubah suatu data yang bersifat non-nullable ke nullable cukup dengan langsung memasukkan datanya saja
   * namun untuk melakukan konversi dari data yang nullable ke non-nullable wajib melakukan pengecekan
   */

  //ini akan aman dan tidak error
  String name = 'Rudi';
  String? nullableName = name;
  print(nullableName);

  //untuk dari nullable ke non-nullable, perlu dilakukan cek
  String? nullLastName = null;
  // String lastName = nullLastName; ERROR
  if (nullLastName != null) {
    String lastName = nullLastName;
    print(lastName);
  }

  ///Default Value
  /**
   * default vale merupakan cara lain untuk memberikan nilai default terhadap data yang bisa null
   * untuk menggunakan default value bisa menggunakan if-else, terranry operation, dan juga menggunakan penulisan default value yang lebih singkat
   */

  String? guest;
  String guestName;
  guest = 'Raja';

  //menggunakan if-else
  if (guest != null) {
    guestName = guest;
    print(guestName);
  } else {
    guestName = 'Guest';
    print(guestName);
  }

  //menggunakan terrnary operation
  guestName = guest != null ? guest : 'Guest';
  print(guestName);

  //menggunakan default value yang lebih singkat
  guestName = guest ?? 'Guest';
  print(guestName);

  /**
   * dart mendukung konversi paksa dari data nullable ke data non-nullable
   * caranya dengan menggunakan tanda seru (!) di belakang variable
   * NB : Gunakan dengan bijak. Konsekuensi jika ternyata suatu nilai dari variable yang nullable bernilai null, maka aplikasi akan error
   */

  // int? angkaNullable;
  // int angkaNonNullable = angkaNullable!;
  // print(angkaNonNullable);

  /**
   * untuk mengakses data yang bisa nullable bisa menggunakan tanda tanya (?)
   * tetapi dengan konsekuensi data hasil pengecekan juga dapat menghasilkan data yang null
   */
  int? ratingInt;
  double? ratingDouble = ratingInt?.toDouble();
  print(ratingDouble);
}
