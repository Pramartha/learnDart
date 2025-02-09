import 'data/category.dart';

void main(List<String> args) {
  //Equals Method
  /**
   * Sebenarnya Equals Method (==) juga merupakan sebuah objek di dart
   * Saat menggunakan == maka dart akan membandingkan suatu objek dari alamat memorinya
   * Ada kalanya saat membandingkan dua buah objek yang identik tetap bernilai false karena dua objek tersebut disimpan di alamat memori yang berbeda sehingga akan di anggap berbeda
   * Jika ingin melakukan perbandingan terhadap isi dari suatu class maka perlu melakukan override pada Equals Method
   * NB : Cek pada file category.dart
   */

  var category1 = Category(1, "Laptop");
  var category2 = Category(1, "Laptop");

  print(category1 == category2);

  print(category1.hashCode);
  print(category2.hashCode);

  // Hash Code Getter
  /**
   * Hash Code merupakan representasi integer dari suatu objek, mirip seperti toString yang merupakan representasi dari String, Hash Code merupakan representasi integer
   * Hash Code bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet, dan lain-lain
   * Secara default HashCode mengembalikan nilai integer sesuai data di memori, namun hal ini dapat di override sesuai yang diinginkan
   * NB :
   *  Melakukan override method HashCode memiliki kontrak yaitu
   *  - Sebanyak apapun HashCode dipanggil untuk objek yang sama harus menghasilkan data integer yang sama 
   *  - Jika ada 2 objek yang sama dibandingkan menggunakan Equals Operator, maka nilai HashCodenya juga harus sama   
   */
}
