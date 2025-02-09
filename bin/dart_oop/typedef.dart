import 'data/sum.dart';

// Typedef Function
typedef Filter = String Function(String filter);

void sayHello(String name, Filter filter) {
  print("Hello ${filter(name)}");
}

//Tanpa typedef
// void sayHello(String name, String Function(String filter)) {
//   print("Hello ${filter(name)}");
// }

void main(List<String> args) {
  // Typedef
  /**
   * Typedef merupakan cara yang dapat dilakukan untuk memberikan alias atau nama lain terhadap suatu objek
   * Semisal class Sum diberikan typedef "Jumlah" dan "Total" maka untuk memanggil class Sum bisa juga menggunakan keyword Jumlah dan Total
   * Selain itu Typedef juga bisa digunakan untuk memberikan alias pada deklarasi suatu function
   * NB : Untuk function tetap disarankan menggunakan deklarasi nama functionnya dibandingkan dengan typedef
   */
  var sum = Sum(10, 10);
  print(sum());

  var jumlah = Jumlah(10, 10);
  print(jumlah());

  var total = Total(10, 10);
  print(total());

  sayHello("Budi", (value) => value.toUpperCase());
}
