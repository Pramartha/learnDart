import 'data/product.dart';

void main(List<String> args) {
  //Access Modifier
  /**
   * Access Modifier adalah cara yang dapat dilakukan untuk menyembunyikan suatu Field atau Method
   * Untuk menyembunyikannya cukup dengan menambahkan underscore (_) sebelum nama Field atau Method
   * Maka secara otomatis Field / Method tersebut hanya bisa di akses dari file itu saja
   * NB : Coba lihat penggunaannya di bawah dengan di file "product.dart"
   */
  var product = Product();
  product.id = '1';
  product.name = 'Sabun';
  // product._quantity = 5; ERROR
  // product._getQuantity(); ERROR
}
