class User {
  String? userName;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main(List<String> args) {
  //Tanpa Cascade Notation
  var user = User();
  user.userName = "Agus";
  user.name = "Agus Muntur";
  user.email = "munturtzy@example.com";

  print(user.userName);
  print(user.name);
  print(user.email);

  //Menggunakan Cascade Notation
  var user1 = User()
    ..userName = "Agus"
    ..name = "Agus Muntur"
    ..email = "munturtzy@example.com";

  print(user1.userName);
  print(user1.name);
  print(user1.email);

  //Nullable Cascade Notation
  User? user2 = createUser()
    ?..userName = "Juned"
    ..name = "Junaedi"
    ..email = "jujun@example.com";
  //Tetap null karena mengembalikan nilai null
  print(user2?.userName);
  print(user2?.name);
  print(user2?.email);
}
