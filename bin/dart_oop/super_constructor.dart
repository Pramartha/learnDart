class Manager {
  String? name;
  Manager(this.name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name) {
    print("Create New VicePresident Constructor");
  }
}

void main(List<String> args) {
  // Super Constructor
  /**
   * Super Constructor merupakan cara untuk mengambil nilai dari Parent Class melalui Child Class
   * Pada Child Class, Constructor harus berupa Redirecting Constructor
   * NB :
   *  Jika menggunakan kata kunci "super" maka Redirecting Constructor bisa memiliki body
   *  Jika Parent Class memiliki constructor yang berisi parameter, maka pada Child Class wajib memanggil Constructor yang memanggil parameternya walaupun parameter constructornya kosong 
   */

  var manager = Manager("Dadang");
  print(manager.name);

  var vici = VicePresident("Julianto");
  print(vici.name);
}
