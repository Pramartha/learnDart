class Person {
  /// Fields / Attribute / Properties
  /// Fields merupakan kumpulan data yang dapat digunakan oleh suatu objek dari suatu class
  /// Fields wajib dimasukkan nilainya kecuali yang bersifat nullable
  /// Walaupun nilainya bebas tetap harus diberi nilai awal untuk data non-nullable
  String name = "Rtha";
  String? address;
  final country = "Indonesia";

  /// Method merupakanfunction yang berada di dalam sebuah class
  /// Sama seperti function method juga bisa memiliki return value maupun parameter
  /// Untuk mengaksesnya bisa menggunakan tanda titik (.) diikuti nama Methodnya
  void sayHello(String paramName) {
    print("Hello $paramName, my Name is $name");
  }

  void sayGanbate() => print("Gas Gass Gasss ...");

  int add(int a, int b) => a + b;

  /// NB :  Setiap field dan method hanya bisa di akses oleh objek yang menggunakan class ini saja
}

extension SayGoodByeOnPerson on Person {
  /// Extension Method merupakan cara untuk dapat memodifikasi class yang sudah ada seperti menambah method
  /// Sintaks :
  /// extension ExtensionMethodNeme on ClassName {
  ///   //expression / additional
  /// }
  void sayGoodBye(String paramName) {
    print("Good Bye $paramName, from $name");
  }
}

class Apple {
  /// Operator Method
  /// Dart memungkinkan memberi nama method menggunakan operator
  /// Sintaks :
  /// ReturnValue operator OperatorSymbols(ReturnValue parameter){
  ///   //expression
  /// }
  /// NB :
  ///   Pembuatannya sama seperti method hanya saja menggunakan keyword "operator" diikuti simbol operatornya
  ///   Simbool Operator tidak wajib sama dengan isi dari method. Tetapi best practicenya diusahakan sama
  int quantity = 0;

  Apple operator +(Apple apple) {
    var result = Apple();
    result.quantity = quantity + apple.quantity;

    return result;
  }

  /// Untuk mengakses Operator Method cukup langsung memanggil value yang dimiliki seperti contoh pada main()
}

main() {
  ///Class & Object
  /**
   * Class merupakan blueprint atau cetakan untuk suatu object
   * Class bisa membuat objek tanpa batas
   * Sintaks :
   * class ClasName{
   *  //attribute / fields / properties
   * }
   * 
   * Object merupakan turunan atau modifikasi dari suatu class
   * Object mempu memiliki atribut yang disesuaikan berdasarkan atribut class parentnya
   * Object juga mewarisi method yang dimiliki oleh class parentnya
   * Sintks :
   * var variableName = ClassName();
   * atau
   * className variableName = ClassName(); 
   */
  var person1 = Person();
  print(person1);

  Person person2 = Person();
  print(person2);

  //Mengakses Data default person
  Person person3 = Person();
  print(person3.name);
  print(person3.address);
  print(person3.country);

  //Memanipulasi data person
  Person person4 = Person();
  person4.name = "Suhadi Sujiwa";
  person4.address = "Jalan Gadjah Mada";
  // person4.country = "Australia"; ERROR karena tipe data final

  print(person4.name);
  print(person4.address);
  print(person4.country);

  //Mengakses Method
  Person person5 = Person();
  person5.sayHello('Gwanju');
  var result = person5.add(10, 2);
  print(result);
  person5.sayGanbate();

  //Mengakses Extension Method
  person2.sayGoodBye("Do-Hwa");

  //Operator Method
  var apple1 = Apple();
  apple1.quantity = 10;

  var apple2 = Apple();
  apple2.quantity = 15;

  /**
   * mengaksesnya cukup dengan menggunakan variable yang diperlukan 
   * tidak seperti mengakses method biasa dengan titik (.)
   */
  var sum = apple1 + apple2;
  print(sum.quantity);
}
