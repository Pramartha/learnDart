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
}
