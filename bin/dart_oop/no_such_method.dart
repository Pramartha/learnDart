import 'data/repository.dart';

void main(List<String> args) {
  // noSuchMethod
  /**
   * noSuchMethod merupakan suatu cara pada dart untuk menangani pemanggilan method yang tidak ada secara manual
   * noSuchMethod secara default bisa digunakan oleh semua objek pada dart
   * noSuchMethod hanya bisa digunakan ketika tipe datanya dynamic atau abstract
   * saat memanggil noSuchMethod maka invocation akan digunakan
   * Invocation merupakan objek yang mewakili pemanggilan suatu metode atau akses ke properti seperti metode, getter, setter, argumen, nama, dll
   * -- https://api.dart.dev/stable/2.9.0/dart-core/Object/noSuchMethod.html
   * -- https://api.dart.dev/stable/2.9.0/dart-core/Invocation-class.html
   * NB : noSuchMethod juga bisa digunakan untuk implements interface
   */
  var repository = Repository("product");
  repository.id('123');
  repository.name('Laptop');
  repository.price(100000);
  // repository.kikikkakakk('walawe');

  /**
   * Saat menggunakan noSuchMethod kadang penggunaannya bisa terlalu luas 
   * Jika ingin membatasi penggunaannya bisa menggunakan abstract class
   * NB : 
   *  Untuk menguji coba hilangkan abstract class pada repository, kemudian hilangkan extends dan nyalakan kikikkakakk()
   *  Kemudian bagian var hanya bisa jika sudah ada abstract class, jika tanpa abstract class harus menggunakan dynamic
   */
}
