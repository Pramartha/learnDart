class Person {
  /// Redirecting Constructor merupakan cara untuk memanggil Constructor lainnya dari satu Constructor
  /// Penulisannya cuku denngan menambahkan titik dua (:), lalu diikuti dengan this(parameter)
  /// Pada Redirecting Constructor kita tidak bisa menambahkan body
  /// NB :
  ///   Redirecting bisa untuk memanggil Default Constructor ataupun Named Cosntructor
  ///   Cananya dengan mengganti "this()" menjadi this.namedConstructor()
  String name = "Guest";
  String? address;
  final country = "Indonesia";

  Person(this.name, this.address);

  //Rediredcting ke Default Constructor
  Person.withName(String name) : this(name, "No Address");
  Person.withAddress(String? address) : this("No Name", address);

  //Redirect ke Named Constructor
  Person.fromAddress() : this.withAddress("Bandung");
}

void main() {
  Person person1 = Person("Setia", "Jakarta");
  print(person1.name);
  print(person1.address);

  Person person2 = Person.withName("Budi");
  print(person2.name);
  print(person2.address);

  Person person3 = Person.withAddress("Jakarta");
  print(person3.name);
  print(person3.address);

  Person person4 = Person.fromAddress();
  print(person4.name);
  print(person4.address);
}
