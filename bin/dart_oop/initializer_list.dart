class Customer {
  /// Initializer List merupakan cara untuk menginisialisasi variable (field) dalam sebuah class sebelum body constructor dijalankan
  /// Umumnya digunakan untuk mengatur nilai awalan untuk field final atau melakukan validasi sebelum constructor dijalankan
  /// NB : Initializer list tidak akan melakukan shadowing terhadap parameter class berbeda jika dilakukan di body constructor

  String firstName = " ";
  String lastName = " ";
  String fullName = " ";

  /// Constructor akan membagi nilai fullName ke firstName [0] dan lastName [1]
  Customer(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {}
}

void main(List<String> args) {
  var customer = Customer("Barudak Hideung");
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}
