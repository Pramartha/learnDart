class Employee {
  String? name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employee employee) {
  if (employee is VicePresident) {
    VicePresident vicepresident = employee as VicePresident;
    print("Hello VicePresident, ${vicepresident.name}");
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print("Hello Manager, ${manager.name}");
  } else {
    print("Hello Employee, ${employee.name}");
  }
}

void main(List<String> args) {
  //Cast and Type Check
  /**
   * Saat melakukan polymorphism di Dart ada kalanya ingin untuk melakukan konversi tipe data ke tipe data aslinya
   * Saat melakukan hal tersebut pastikan untuk melakukan pengecekan tipe data (type check) menggunakan keyword "is" 
   * Hasil operator is adalah Boolean ture jika benar dan false jika salah
   * Untuk melakukan konversi tipe data bisa menggunakan keyword "as"
   * NB : 
   *  Saat melakukan type check sebenarnya Dart sudah menganggap terjadinya perubahan, sehingga kata kunci "as" tidak wajib digunakan secara manual 
   */
  sayHello(Employee("Junaedi"));
  sayHello(Manager("Susilo"));
  sayHello(VicePresident("Yudi"));
}
