import 'data/location.dart';

void main(List<String> args) {
  //Abstract Class
  /**
   * Abstract class merupakan class yang tidak bisa memmiliki object secara langsung atau hanya sebagai Parent Class
   * Abstract class hanya dapat diturunkan dan turunannya tetap bisa dibuatkan object
   * Untuk membuat abstract class cukup dengan menggunakan keyword "abstract"
   * NB : Abstract Class tetap bisa memiliki body seperti constructor, method, maupun field
   */
  var city = City("Jimbaran");
  print(city.name);
  // var location = Location(); ERROR
}
