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
  print("Hello ${employee.name}");
}

void main(List<String> args) {
  //Polymorphism
  /**
   * Polymorphism merupakan kemampuan suatu objek untuk berubah bentuk
   * Semisal awalnya terdapat employee memiliki tipe Employee
   * employee bisa dirubah menjadi tipe Manager karena Manager merupakan turunan dari Employee
   * kemudian employee bisa dirubah kembali menjadi tipe VicePresident bisa karena merupakan turunan dari Manager
   */
  Employee employee = Employee("Junaedi");
  print(employee);

  employee = Manager("Susilo");
  print(employee);

  employee = VicePresident("Yudi");
  print(employee);
  print(" ");

  //Method Polymorphism
  /**
   * Jika parameter yang dikirimkan pada sebuah method mengandung tipe Parent Class, maka semua turunannya bisa dilakukan polymorphism
   */
  sayHello(Employee("Junaedi"));
  sayHello(Manager("Susilo"));
  sayHello(VicePresident("Yudi"));
}
