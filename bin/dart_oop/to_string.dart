import 'data/product.dart';

void main(List<String> args) {
  ///Override Method toString
  /**
   * Melakukan Override method toString sebenarnya seperti melakukan debug
   * Karena method toString method merupakan method untuk representasi String dari objek
   * Contohnya saat menggunakan function print(object), sebenarnya yang dipanggil adalah print(object.toString())
   * Override toString biasanya dibuat untuk mengimplementasikan representasi data String dari Class yang dibuat
   */
  var product = Product();
  product.id = "1";
  product.name = "Yakult";

  print(product.toString());
  print(product);
}
