class Sample {
  //Anotation
  @override
  String toString() {
    return "Sample";
  }

  @Deprecated("Dont use this again!!")
  void doNotUseThis() {}
}

class Todo {
  final String todo;

  const Todo(this.todo);
}

@Todo("Will be Right Back")
class Application {
  @Todo("Will be Right Back")
  String? name;

  @Todo("Will be Right Back")
  void feature() {}
}

void main(List<String> args) {
  /**
   * Anotation merupakan suatu penanda yang digunakan untuk memberitahukan sesuatu yang terjadi pada kode
   * ANotation hanya sebagai penanda (atau istilahnya  metadata / data tambahan)
   * Anotation dimulai dengan karekter (@) diikuti dengan constant atau memanggil constant constructornya
   * Di dart ada 2 yang umum dipakai yaitu @override dan @Deprecated
   * @override digunakan untuk memberitahu bahwa kode dibawhanya merupakan override dari parentnya
   * @Deprecated digunakan untuk memberitahu bahwa kode program tersebut sudah tidak direkomendasikan untuk digunakan
   * Di dart Annotation bisa dibuat secara manual caranya dengan membuat constant atau bisa dengan membuat Class menggunakan Constant Constructor 
   * NB : Annotation bisa digunakan dimanapun seperti class, field, maupun method
   */
}
