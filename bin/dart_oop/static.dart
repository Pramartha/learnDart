class Application {
  static String name = 'Learn Dart';
  static final String author = 'Rtha';
}

class Math {
  static int sum(int first, int second) => first + second;
}

void main(List<String> args) {
  // Static Field
  /**
   * Static merupakan keyword yang digunakan untuk membuat field atau method yang dapat diakses tanpa harus membuat objeknya 
   * Saat static field / method dibuat, artinya secara otomatis hal tersebut bisa diaksea oleh objek mana saja sehingga perlu hati-hati dalam pembuatannya
   * Field / method static dapat diakses oleh field / method yang tidak static
   * Kebalikannya field / method yang tidak static tidak dapat mengakses akses oleh field / method yang static
   * Static umumnya digunakan untuk membuat utility
   * Untuk menggunakan static cukup dengan nama Class.static method/field 
   * NB : biasanya static dibuat dengan tipe final agar tidak dapat dirubah sembarangan
   */

  print(Application.name);
  Application.name = "Dart Learn";
  // Application.author = "Prams"; ERROR
  print(Application.name);
  print(Application.author);

  // Static Method
  /**
   * Static Method sama seperti pada field
   * Jika dia diberi keyword static maka method tersebut akan bisa diakses oleh semua objek yang ada
   * Umumnya Static method digunakan untuk helper / utility class yang dimana pembuatannya akan lebih baik jika tanpa membuat objek terlebih dahulu
   */
  print(Math.sum(10, 10));
}
