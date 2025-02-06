class Person {
  /// Constructor mirip seperti sebuah method yang akan di panggil ketika pertama kali sebuah object dibuat
  /// Nema Constructor harus sama dengan nama class
  /// Tidak memerlukan kata kunci void dan return value
  /// Ketika pada sebuah class COntructor dibuat, maka saat membuat objek baru kita wajib memngirimkan parametersesuai yang diperlukan di dalam Constructor
  /// Constructor hanya bisa di buat 1 untuk sebuah class
  String name = "Guest";
  String? address;
  final country = "Indonesia";

  // Person(String paramName, String paramAddress) {
  //   name = paramName;
  //   address = paramAddress;
  // }

  void sayHello(String paramName) {
    print("Hello $paramName, my Name is $name");
  }

  /// Variable Shadowing merupakan keadaan saat terdapat name variable yang sama di deklarasikan 2 kali
  /// Seabagi contoh di atas sudah terdapat variable dengan nama name, address, dan country
  /// Jika terjadi variable shadowing maka variable di atasnya akan di tutupi atau di timpa oleh variable di bawahnya
  /// NB : Comment bagian constructor!

  //variable name dan address tidak akan dapat di rubah karena variable yang ada itu akan dianggap seperti tidak berubah
  // Person(String name, String address) {
  //   name = name;
  //   address = address;
  // }

  /// This Keyword digunakan untuk mengatasi variable shadowing
  /// Cukup gunakan kata kunci "this." untuk mengakses objek saat ini
  /// NB : Comment bagian constructor!

  // Person(String name, String address) {
  //   this.name = name;
  //   this.address = address;
  // }

  /// Initializin Formal Parameter
  /// Terkadang saat membuat constructor kita ingin membuat parameter yang hanya bisa digunakan untuk mengubah nilai yang ada di dalam field, maka bisa menggunakan Formal Parameter
  /// Formal Parameter hanya bisa digunakan di constructor, tidak bisa di method
  /// NB :
  ///   Comment bagian constructor!
  ///   Jika tidak ada body tanda kurung kurawal ({}) bisa diganti dengan titik koma (;)

  Person(this.name, this.address);

  /// Named Constructor
  /// Di dart constructor hanya bisa dibuat satu kali saja, karena di dart tidak ada istilah overloading
  /// Tetapi terdapat cara untuk dapat membuat lebih deri satu constructor yaitu dengan menggunakan Named Constructor
  /// Sintaks :
  /// className.namedConstructor {}
  /// NB :
  ///   Nama constructor tidak boleh sama
  ///   Jika tidak ada body tanda kurung kurawal ({}) bisa diganti dengan titik koma (;)
  ///   Jika menggunakan Named Consttructor dan mengambil value yang tidak ada di named constructor namun ada di field maka akan menggunakan nilai dari field
  Person.withName(this.name);
  Person.withAddress(this.address);
}

void main() {
  Person person1 = Person("Karin", "Jawa");
  print(person1.name);
  print(person1.address);

  //Mengakses Named Constructor
  Person person2 = Person.withName("Jokowi");
  print(person2.name);
  print(person2.address);

  Person person3 = Person.withAddress("Jl. Imam Bondjol");
  print(person3.name);
  print(person3.address);
}
