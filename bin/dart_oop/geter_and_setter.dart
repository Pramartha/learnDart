import 'data/rectangle.dart';

void main(List<String> args) {
  //Getter and Setter
  /**
   * Getter and setter merupakan cara yang dilakukan untuk mengakses data yang tersembunyi oleh access modifier
   * Getter digunakan untuk mendapatkan nilai yang disembunyikan
   * Setter digunakan untuk mengubah nilai yang disembinyikan
   * Sintaks Getter :
   * returnType get namaMethod {
   *  //body
   * } 
   * Sintaks Setter :
   * set namaMethod(parameter) {
   *  //body
   * }
   * NB : 
   *  Jika Getter dan setter hanya mengambil nilai dan merubah field disarankan menggunakan expression body, mirip seperti Annonymus Function
   * WARNING "Unnecessary use of getter and setter to wrap a field. Try removing the getter and setter and renaming the field." Merupakan warning yang memberitahu bahwa jika hanya untuk mengubah dan mengambil nilai saja lebih baik tidak perlu menggunakan access modifier dan menyembunyikan nilai
   * Tetapi jika terdapat logika tambahan semisal if, maka getter setter boleh saja dilakukan (Cek di file rectangle.dart)
   */
  var rectangle = Rectangle();
  rectangle.width = 10;
  rectangle.height = 12;

  print(rectangle.width);
  print(rectangle.height);
}
