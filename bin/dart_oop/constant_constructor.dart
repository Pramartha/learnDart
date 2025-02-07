class ImmutablePoint {
  /// Constant Constructor merupakan constructor yang tidak dapat di ubah datanya (Immutable Data)
  /// Untuk membuat Constant Constructor dapat menggunakan kata kunci "const" saat membuat constructornya
  /// Saat Constant Constructor dibuat maka ketika constant objek dibuat, secara otomatis akan menggunakan objek yang sama karena datanya tidak akan berubah
  /// NB : Saat membuat constant constructor pastikan data pada field bernilai final agar tidak dapat di rubah

  final x;
  final y;

  const ImmutablePoint(this.x, this.y);

  ///Untuk menggunakan Constant Constructor cukup dengan menambahkan kata kunci "const" sebelum nama Objek
}

void main(List<String> args) {
  //Jika tanpa menggunakan kata kunci "const" maka dia merupakan 2 objek yang berbeda walaupun nilainya sama
  var point1 = ImmutablePoint(10, 20);
  var point2 = ImmutablePoint(10, 20);
  print(point1 == point2);

  //Jika menggunakan kata kunci "const" maka dia akan menggunakan satu data yang sama dan menggunakan 1 alamat
  var point3 = const ImmutablePoint(10, 20);
  var point4 = const ImmutablePoint(10, 20);
  print(point3 == point4);
}
