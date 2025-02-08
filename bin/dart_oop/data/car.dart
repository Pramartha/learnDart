class Car {
  String name = "";

  void drive() {}

  int getTire() {
    return 0;
  }
}

abstract class HasBrand {
  String getBrand();
}

class Avanza implements Car, HasBrand {
  @override
  String name = "Avanza";

  @override
  String getBrand() => "Toyota";

  @override
  void drive() {
    print("$name is running");
  }

  @override
  int getTire() {
    return 4;
  }
}

void main(List<String> args) {
  //Interface
  /**
   * Interface merupakan cara yang dilakukan untuk membuat sebuah Class memiliki kontrak dengan interfacenya
   * Setiap Class yang ada di dart bisa menjadi Interface Class
   * Jika inheritence biasa berarti setiap class yang ada bisa memiliki method maupun field yang ada pada Parent Classnya, maka di interface setiap class harus mengoverride semua method dan field dari class interfacenya
   * Karena sederhananya interface itu seperti kontrak bukan pewaarisan, sehingga memaksa class yang menggunakannya harus mengoverride method dan juga field yang ada
   * Untuk penulisannya cukup dengan menggunakan keyword "implements" pada subclass
   * Implements bisa memiliki multi-interface yang artinya berasal dari berbagai Class Interface lain
   * Untuk menggunakan multi-interface cukup menambahkan class lainnya juga setelah keyword "implements"
   * NB : Interface umumnya dan disarankan menggunakan abstract class
   */
}
