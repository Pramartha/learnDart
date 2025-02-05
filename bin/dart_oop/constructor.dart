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
  /// NB : Comment bagian constructor!

  Person(this.name, this.address);
}

void main() {
  Person person1 = Person("Karin", "Jawa");
  print(person1.name);
  print(person1.address);
}
