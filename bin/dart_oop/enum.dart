import 'data/customer.dart';

void main(List<String> args) {
  //Enum
  /**
   * Enum merupakan tipe data yang dapat digunakan ketika niali dari suatu variable sudah pasti dan memiliki beberapa pilihan nilai
   * 
   */
  var customer = Customer("Galih", CustomerLevel.premium);

  print(customer.name);
  print(customer.level);

  // Untuk melihat semua pilihan pada enum
  print(CustomerLevel.values);
}
