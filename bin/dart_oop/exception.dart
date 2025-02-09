class ValidationException implements Exception {
  String message;
  ValidationException(this.message);
}

/// Membuat Exception Class sendiri
class Validation1 {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username is blank");
    } else if (password == "") {
      throw ValidationException("Password is blank");
    }
  }
}

class Validation2 {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username is blank");
    } else if (password == "") {
      throw ValidationException("Password is blank");
    } else if (username != "Boboiboy" || password != "Galaxy") {
      throw Exception("You are not Boboiboy");
    }
  }
}

/// Menggunakan Exception bawaan dari Dart
// class Validation {
//   static void validate(String username, String password) {
//     if (username == "") {
//       throw Exception("Username is blank");
//     } else if (password == "") {
//       throw Exception("Password is blank");
//     }
//   }
// }

void main(List<String> args) {
  // Exception
  /**
   * Ecxception merupakan istilah untuk memberitahukan kesalahan
   * Sebenarnya Exception sendiri merupakan sebuah Class di Dart
   * Dalam dart kita bisa membuat Class Exception sendiri atau menggunakan yang sudah disediakan dart
   * Untuk membuat sebuah exception, bisa menggunakan keyword "throw" diikuti dengan objek exceptionnya
   */

  // Mencoba trigger exception bawaan dart (Hilangkan Komentar untuk mencoba)
  // Validation.validate("", "");

  /**
   * Selain menggunakan Class Exception yang sudah disediakan, kita juga dapat membuat class exception sendiri
   * Tidak ada kontrak dalam pembuatan Class Exception, menggunakan Class biasa saja itu bisa
   * NB : Namun sangat direkomendasikan jika membuat class Exception baru melakukan implements ke Class Exception, dengan tujuan sebagai penanda saja
   */

  // Try-Catch
  /**
   * Ketika terjadi suatu kesalahan maka program akan berhenti
   * Untuk menangani hal ini maka dapat digunakan try-catch 
   * Try-catch merupakan cara yang dapat dilakukan untuk menangkap dan melakukan sessuatu ketika kesalahan terjadi
   * Blok "Try" digunakan untuk memanggil method yang bisa menyebabkan exception
   * Blok "Catch" digunakan untuk melakukan sesuatu ketika kesalahan exception terjadi
   */

  try {
    Validation1.validate("", "");
  } on ValidationException catch (exception) {
    print("Validation Error : ${exception.message}");
  }

  print("");
  // Multiple-Exception
  /**
   * Jika terdapat lebih dari satu error / Multiple-Error maka bisa menggunakan multiple-exception
   */

  /**
   * Pada Try-catch terdapat blok code bernama "finally"
   * Blok code Finally ini akan selalu dieksekusi tanpa mempedulikan terjadi error atau tidaknya exceptionnya
   */
  try {
    Validation2.validate("Yin", "Yang");
  } on ValidationException catch (exception) {
    print("Validation Error : ${exception.message}");
  } on Exception catch (exception) {
    print(exception.toString());
  }
  print("");

  try {
    Validation2.validate("Yin", "Yang");
  } on ValidationException catch (exception) {
    print("Validation Error : ${exception.message}");
  } on Exception catch (exception) {
    print(exception.toString());
  } finally {
    print("Selesai");
  }

  // Menangkap Semua Exception tanpa terkecuali
  /**
   * Untuk menangkap semua exception tanpa terkecuali kita dapat menghilangkan nama class di keyword "on"
   * Hal ini berarti semua exception akan di tangkap tanpa memperhatikan Classnya
   * NB :
   *  Untuk tambahan jika ingin mengetahui lokasi baris dari terjadinya error dapat menggunakan stack trace
   */
  print("");
  try {
    Validation2.validate("Yin", "Yang");
  } catch (exception, stackTrace) {
    print("Error : ${exception.toString()}");
    print("Stack Trace : ${stackTrace.toString()}");
  } finally {
    print("Selesai");
  }
}
