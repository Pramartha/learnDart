class Manager {
  String? name;

  void sayHello(String name) {
    print("Hello $name, I'm ${this.name} the Manager");
  }
}

class Waiters extends Manager {
  @override
  void sayHello(String name) {
    print("Hello $name, I'm ${this.name} the Waiters");
  }
}

class Casier extends Manager {
  @override
  void sayHello(String name) {
    print("Hello $name, I'm ${this.name} the Casier");
  }
}

void main(List<String> args) {
  //Method Overriding
  /**
   * Method Overriding adalah cara untuk mendeklarasikan ulang sebuah method yang sudah ada di Parent Class
   * Method Overriding bertujuan untuk merubah method yang sudah ada
   * Method Overriding harus memiliki nama, paremeter, dan return yang sama dengan yang ada di Parent Class
   */

  var manager = Manager();
  manager.name = "Muldoko";
  manager.sayHello("Ucup");

  var waiters = Waiters();
  waiters.name = "Bambang";
  waiters.sayHello("Ucup");

  var casier = Casier();
  casier.name = "Julia";
  casier.sayHello("Ucup");
}
