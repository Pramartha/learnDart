import 'data/category.dart';

void main(List<String> args) {
  //Import
  /**
   * Import merupakan cara yang dapat dilakukan untuk membuat sebuah file dan menggunakannya di file lainnya
   */
  var category = Category(1, 'Laptop');
  print(category.id);
  print(category.name);
}
