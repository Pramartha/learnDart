void sayHello() {
  print('Hello World!');
}

int addNumber(int a, int b) {
  return a + b;
}

void greatings1(String firstName, [String? lastName]) {
  print('Hello $firstName $lastName! Good Morning...');
}

void greatings2(String firstName,
    [String? middleName = ' ', String? lastName = ' ']) {
  print('Hello $firstName $middleName $lastName! Good Morning...');
}

void namedParameter(
    {required String firstName,
    String middleName = 'Goo-Jung',
    String? lastName}) {
  print('Hi $firstName $middleName $lastName! This is named parameter...');
}

void main() {
  ///Function
  /**
   * function / method merupakan cara untuk membuat suatu kode menjadi lebih modular dan reuseable
   * Sintaks:
   * returnType namaFunction(parameter1, parameter2, ...){
   *  //code
   *  returnValue; //jika memiliki return value
   * }
   * return value diperlukan untuk function yang mengembalikan sesuatu seperti int, double. Gunakan void jika tikak memerlukan return value
   */
  sayHello();

  var a = 5, b = 10;
  var output = addNumber(a, b);
  print(output);
  print(addNumber(a, b));

  //Optional Parameter
  /**
   * ada kalanya kita ingin membuat suatu fungsi yang memiliki parameter yang tidak wajib diisi
   * untuk melakukannya bisa menggunakan optional parameter
   * optional parameter dituliskan seperti [tipeData? namaVariable]
   * optional parameter harus bersifat nullable dan di bungkus ke dalam kurung siku []
   * optional parameter harus berada di paling akhir
   * jika terdapat lebih dari satu optional parameter bisa ditulis [tipeData1? namaVariable1, tipeData2? namaVariable2]
   * jika ingin agar nilai null tidak di tampilkan bisa menggunakan default value string kosong sebagai pengganti null
   */
  print(' ');
  greatings1('Hikarunara');
  greatings1('Budi', 'Santoso');
  print(' ');
  greatings2('Hikarunara');
  greatings2('Budi', 'Santoso');
  greatings2('Budi', 'Santoso', 'Sujiwa');

  //Nameed Parameter
  /**
   * Named Parameter merupakan suatu cara di dart yang digunakan untuk dapat memberitau parameter yang di inputkan tanpa perlu menguutkannya sesuai dengan yang ada di parameter functionnya
   * contohnya :
   * void greatings1(String firstName, [String? lastName]) {
   *   print('Hello $firstName $lastName! Good Morning...');
   * }
   * Harus di tuliskan perurutan seperti :
   * greatings1('Budi', 'Santoso');
   * Budi menjadi firstName dan Santoso menjadi lastName
   *
   * Named parameter bisa di acak, tetapi penulisannya functionnya perlu tanda {}
   * Named Parameter secara default akan bersifat nullable
   * Named Parameter bisa menjadikan suatu paramaeter bersifat wajib dengan menambahkan 'required' di depan nama variablenya
   *  Named Parameter juga bisa di set default valuenya
   */
  print(' ');
  namedParameter(firstName: 'Juni');
  // namedParameter(lastName: 'Junaedi'); ERROR karena firstName tidak di isi
  namedParameter(firstName: 'Juni', lastName: 'Junaedi');
  namedParameter(lastName: 'Junaedi', firstName: 'Juni');

  ///Function Sort Expression
  /**
   * dart mendukung yang penyederhanaan penulisan pada sebuah function
   * saat dalam sebuah function hanya berisi satu baris code maka function sort exxpression dapat di gunakan
   * keunggulan lainnya jika function tersebut mengembalikan nilai kata return juga tidak di perlukan
   */
  int sum(int first, int second) => first + second;
  print(sum(10, 20));

  ///Inner Function
  /**
   * di dart sebuh function bisa di buat di dalam sebuah function lainnya
   * jadi sebuah function (outer function) bisa berisi function lain di dalam function tersebut (inner function)
   * NB : Inner Function hanya bisa di akses di dalam outer functionnya saja
   */
  void outerFunction() {
    print('Outer Function');

    void innerFunction() {
      print('Inner Function');
    }

    //outer function bisa mengakses inner function
    print(innerFunction);
  }
  // print(innerFunction); ERROR main tidak bisa mengakses inner function

  ///Higher Order Function
  /**
   * higher order function merupakan function yang dapat menggunakan function lain sebagai parameter
   * higher order function juga merupakan function yang dapat mengembalikan fungsi lain sebagai return
   */

  //Function sebagai parameter
  void mathOperation(int a, int b, Function operation) {
    var result = operation(a, b);
    print('Hasil Operasi adalah : $result');
  }

  int add(int a, int b) => a + b;
  int times(int a, int b) => a * b;
  mathOperation(2, 3, add);
  mathOperation(5, 4, times);

  //Function sebagai return
  Function chooseOperation(String operator) {
    if (operator == '+') {
      return (int a, int b) => a + b;
    } else if (operator == '*') {
      return (int a, int b) => a * b;
    } else {
      return (int a, int b) => 0;
    }
  }

  var operation = chooseOperation('+');
  print('Hasil operation : ${operation(10, 5)}');

  var operation2 = chooseOperation('*');
  print('Hasil operation : ${operation2(10, 5)}');

  ///Annonymus Function
  /**
   * di dart terdapat istilah annonymus function yang berarti function tanpa nama Function
   * biasanya annonymus function digunakan ketika memanggil function yang membutuhkan parameter berupa function
   * NB : dalam bahasa pemrograman lain sering di sebut lambda
   */
  var upperCase = (String text) {
    return text.toUpperCase();
  };
  var lowerCase = (String text) => text.toLowerCase();

  print(upperCase('Goo Yoong Jung'));
  print(lowerCase('Steven Hansen'));

  //Anonymus Function sebagai parameter
  void sayGoodBye(String bro, String Function(String) filter) {
    print('Good Bye ${filter(bro)}');
  }

  sayGoodBye('Brother', (bro) {
    return bro.toUpperCase();
  });
  sayGoodBye('Brother', (bro) => bro.toLowerCase());

  ///Closure
  /**
   * closure adalah kemampuan sebuah function atau annonymus function untuk berinteraksi dengan data-data di sekitarnya dalam satu scope
   * jadi ada kalanya ketika kita lupa atau tidak tau ada blok kode yang dalam satu scope bisa mengubah nilai variable lainnya
   * NB : Harap gunakan fitur ini dengan bijak karena dapat menyebabkan kebingungan
   */

  var closure = 10;
  print(closure);
  void decrement() {
    print('Decrement');
    closure--;
  }

  decrement();
  decrement();
  print(closure);

  ///Recursive Function
  /**
   * recursive function merupakan function yang akan memanggul dirinya sendiri
   * contoh umum seperti dalam kasus Factorial
   * NB : 
   *  walaupun recursive sangat sederhana dan terkesan lebih mudah tetapi ada beberapa kelemahannya
   *  jika recursive terlalu dalam maka bisa menimbulkan Stack Overflow yaitu error karena pemaggilan functionnya terlalu banyak
   * Problem ini bisa terjadi karena dia menunggu hingga bagian akhirnya
   */

  //Menggunakan Perulangan Biasa
  int factorial(int factor) {
    var result = 1;
    for (var i = 1; i <= factor; i++) {
      result *= i;
    }
    return result;
  }

  print('Hasil Perulangan Biasa : ${factorial(5)}');

  ///Menggunakan Recursive
  int recursive(int factor) {
    if (factor == 1) {
      return 1;
    } else {
      return factor * recursive(factor - 1);
    }
  }

  print('Hasil Recursive : ${recursive(5)}');
}
