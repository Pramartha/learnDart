class Shape {
  int getCornner() {
    return 0;
  }
}

class Rectangle extends Shape {
  @override
  int getCornner() {
    return 4;
  }

  int getParentCornner() {
    return super.getCornner();
  }
}

void main(List<String> args) {
  // Super Keyword
  /**
   * Saat melakukan overriding maka method ataupun field yang ada pada parent tidak akan bisa di akses (tertumpuk)
   * Super Keyword merupakan cara yang dapat dilakukan untuk mengakses method / field yang ada di Parent Class dan sudah di override di Child Class
   * Penggunaannya cukup dengan menggunakan kata kunci "super" 
   */
  var bentuk1 = Rectangle();
  print(bentuk1.getCornner());
  print(bentuk1.getParentCornner());
}
