class Product {
  String? id;
  String? name;
  int? _quantity;
  int? _getQuantity() {
    return _quantity;
  }

  @override
  String toString() {
    return "Product{id=$id, name=$name, quantity=$_quantity}";
  }
}

void main(List<String> args) {
  var product = Product();
  product.id = '1';
  product.name = 'Sabun';
  product._quantity = 5;
  product._getQuantity();
}
