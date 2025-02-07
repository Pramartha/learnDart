class Person {
  String name = "Pujangga";

  void sayHello(String name) {
    print("Hello $name, my name is ${this.name}");
  }
}

class OtherPerson extends Person {
  @override
  String name = "Mayang";
}

class AnotherPerson extends Person {
  @override
  String name = "Ano";
}

void main(List<String> args) {
  //Field Overriding
  /**
   * Field Overriding adalah cara untuk mendeklarasikan ulang sebuah field yang sudah ada di Parent Class
   * Field Overriding bertujuan untuk merubah field yang sudah ada
   * Field Overriding harus memiliki nama, paremeter, dan return yang sama dengan yang ada di Parent Class
   * NB : Field Overriding jarang digunakan karena field sebenarnya bisa saja untuk di rubah dari luar Class
   */

  var person1 = Person();
  person1.sayHello("Ucup");

  var person2 = OtherPerson();
  person2.sayHello("Ucup");

  var person3 = AnotherPerson();
  person3.sayHello("Ucup");
}
