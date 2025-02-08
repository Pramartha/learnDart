import 'data/animal.dart';

void main(List<String> args) {
  //Abstract Method
  /**
   * Abstract Method merupakan method yang hanya bisa dimiliki oleh abstract class
   * Abstract Merhod tidak bisa memiliki body karena ABstract Method memaksa class turunannya melakukan overriding terhadap method tersebut
   * Ketika suatu Class tidak menggunakan Method tersebut maka class itu akan error
   */
  var cats = Cat();
  cats.name = "Miaw";
  cats.run();
}
