abstract class Animal {
  String? name;

  void run();
}

class Cat extends Animal {
  @override
  void run() {
    print('$name is running');
  }
}
