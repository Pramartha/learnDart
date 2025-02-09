class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  call() => first + second;

  count() => first + second;
}

typedef Jumlah = Sum;
typedef Total = Sum;

void main(List<String> args) {
  //Callable Class
  /**
   * Callable class merupakan class yang mirip seperti function
   * Callable class berisi sebuah method dengan nama "call()"
   * Parameter dan returnnya bisa di sesuaikan sesuai keinginan kita
   * Setelah membuat suatu objek, pemanggilan method call() bisa disingkat dengan cukup memanggil nama objeknya saja
   */
  var sum = Sum(10, 10);
  print(sum()); //Dengan method call()
  print(sum.count()); //Tanpa method call()
}
