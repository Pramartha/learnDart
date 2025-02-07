class User {
  String? name;

  void sayHello(String? name) {
    print("Hello $name, nama saya ${this.name}");
  }
}

class Manager extends User {
  int? gaji;

  void showGaji(int gaji) {
    print("Gajimu $gaji, gaji saja ${this.gaji}");
  }
}

class BackOffice extends Manager {}

void main(List<String> args) {
  /**
   * Inheritance merupakan pewarisan sifat / turunan dari suatu class (Parent Class) ke anaknya (Child Class
   * Setiap Child CLass hanya bisa berasal dari satu Parent Class
   * Tetapi satu Parent Class bisa membuat banyak Child Class
   * Jika suatu Child Class dibuat maka seluruh field, method yang ada di parentnya dapat digunakan oleh Child Class tersebut
   * Untuk membuat Child Class cukup dengan menggunakan kata kunci "extends" diikuti nama Parent Classnya 
   */

  var person1 = User();
  person1.name = "Budi";
  person1.sayHello("Bambang");

  var manager1 = Manager();
  manager1.name = "Ujang";
  manager1.sayHello("Susilo");

  var officeboy1 = BackOffice();
  officeboy1.name = "Ujang";
  officeboy1.sayHello("Boboho");
  officeboy1.gaji = 100000;
  officeboy1.showGaji(20000);
}
