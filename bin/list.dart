void main() {
  ///List
  /**
   * List sama seperti array, dimana menggunakan kurung siku
   * pada dart list ditulis dengan format
   * List<tipeData> namaVariableList = [isi list],
   * atau bisa juga dengan var dan final seperti:
   * var namaVariableList = <tipeData>[isi list]
   * final namaVariableList = <tipeData>[isi list]
   */
  List<String> listString = [];
  var listInt = <int>[];

  print(listInt);
  print(listString);

  /**
   * untuk menambahkan dara ke dalam list bisa menggunakan method add(value)
   * untuk mengetahui jumlah data di dalam list bisa menggunakan properti length
   * untuk mengambil data dilist berdasarkan index dapat menggunakan namaList[index]
   * untuk mengubah isi di dalam list berdasar index dapat menggunakan namaList[index] = nilaiBaru
   * untuk menghapus value di dalam list dapat menggunakan method namaList.removeAt(index) dan semua nilai akan akan bergeser
   */
  var name = <String>[];

  name.add('Rudi');
  name.add('Ujang');
  name.add('Made');

  print('Isi dari list nama : $name');
  print('Pangjang list nama : ${name.length}');
  print('Index ke-1 : ${name[1]}');
  name[2] = 'Setiawan';
  print('Index ke-2 di rubah menjadi Setiawan');
  print('Isi dari list nama : $name');
  name.removeAt(0);
  print('Index ke-0 di hapus');
  print('Isi dari list nama : $name');

  /**
   * penulisan list dapat juga di deklarasikan isinya secara langsung seperti berikut
   * var namaList = [value1, value2, value3, ...], tipe data bisa langsung di deteksi berdasarkan isinya
   * var namaList = <tipeData>[value1, value2, value3, ...], memberitau secara eksplisit juga dbisa di lakukan untuk menghindari kesalahan
   * var namaList = [
   *  value1,
   *  value2,
   *  value3,
   *  ...
   * ], menuliskan list juga dapat menurun ke bawah seperti ini
   */
  var masakan = <String>['nasi goreng', 'capcay', 'fuyunghai'];
  print(masakan);

  ///Set
  /**
   * set mirip seperti list tetapi tidak dapat menyimpan data yang sama
   * jika ada data yang sama di inputkan maka hanya 1 data saja yang akan disimpan
   * set tidak memiliki index, dan penyimpanannya tidak selalu berurutan
   * deklarasi set dapat ditulis seperti berikut
   * Set<tipeData>namaSet = {isi Set};
   * var/final namaSet = <tipeData>{isi Set};
   */

  var setNama = <String>{'Santoso'};
  print(setNama);

  /**
   * untuk memanipulasi set dapat menggunakan beberapa cara sebagai berikut
   * set.length untuk mengetahui panjang set
   * set.add(value) untuk menambahkan data ke dalam set
   * set.remove(value) untuk menghapus data yang ada di dalam set
   * NB : saat menghapus data yang tidak ada di dalam set, maka tidak akan error tetapi data tidak ada yang terhapus jadi pastikan data yang terhapus memang benar penulisannya
   */
  setNama.add('Mamang');
  setNama.add('Junaedi');
  setNama.add('Santoso');
  print(setNama.length);
  print(setNama);
  setNama.remove('Junaedi');
  print(setNama);

  ///Map
  /**
   * Map mirip seperti list, tetapi Map memiliki index yang lebih flexibel karena dapat ditentukan sendiri dan tidak harus berupa int
   * Menggunakan Map berarti kita harus menentukan sebuah key untuk sebuah value yang di inputkan secara manual
   * Jika terdapat key yang sama maka secara otomatis value pada key tersebut akan di rubah
   * Membuat Map ditulsikan dengan format sebagai berikut
   * Map <tipeKey, tipeValue> = namaVariable = {}; ini yang paling umum digunakan
   * var namaVariable = Map<tipeKey, tipeValue>();
   * var namaVariable = <tipeKey, tipeValue>{};
   * untuk dapat memanipulasi Map dapat menggunakan beberapa cara sebagai berikut :
   * namaMap.length, untuk mendapatkan panjang map
   * map[key], untuk mendapatkan nilai/value pada key tersebut
   * map[key] = value, untuk merubah nilai pada key tersebut
   * map.remove(key), untuk menghapus data dimap
   */
  Map<String, String> flowers = {
    'flo1': 'rose',
    'flo2': 'jasmine',
    'flo3': 'lily',
  };
  print(flowers);

  print(flowers.length);
  print('flo1 : ${flowers['flo1']}');
  print('flo2 di rubah menjadi lotus ${flowers['flo2'] = 'lotus'}');
  print(flowers);
  print('flo1 dihapus. flo1 = ${flowers.remove('flo1')}');
  print(flowers);

  ///Symbol
  /**
   * Symbol merupakan tipe data yang jarang digunakan
   * Symbol ini bisa dibilang mirip seperti constant dimana isinya tidak dapat di rubah-rubah
   * Untuk membuat symbol bisa dengan menggunakan tanda #
   * Atau jika berbentuk text atau kalimat yang berisi spasi bisa menggunakan Symbol("text")
   */
  Symbol symbol1 = Symbol("Ini simbol satu");
  var symbol2 = #ini_symbol_dua;

  print(symbol1);
  print(symbol2);
}
