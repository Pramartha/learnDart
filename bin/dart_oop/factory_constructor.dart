/// Factory Constructor merupakan fitur yang dimana memperbolehkan constructor untuk memuat objek baru, dengan logika cara pembuatan objeknya bisa ditentukan sendiri sesuai keinginan
/// Semisal seperti ingin mengembalikan objek yang sama berkali-kali
/// Untuk membuat Factory Constructor cukup dengan menggunakan kata kunci "Factory" sebelum pembuatan constructornya
/// NB : factory constuctor memerlukan return
class Database {
  Database() {
    print("Create New Database Connection");
  }

  //ini sampai bawah factory. Comment untuk mencoba tanpa factory
  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

void main(List<String> args) {
  ///Uncomment bagian ini dan comment bagian bawah untuk mencoba tanpa factory
  // var database1 = Database();
  // var database2 = Database();
  // print(database1 == database2);

  var database3 = Database.get();
  var database4 = Database.get();

  print(database3 == database4);
}
