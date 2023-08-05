class Product {
  String name;
  double price;
  Product(this.name, this.price);
}

class ProductList {
  double totalAmount = 0;
  List<Product> productList = [Product('Apple', 60), Product('Grape', 90)];
  static final instaceOfProductList = ProductList._();
  ProductList._();
  Map<Product, int> quantityProduct = {};
  void addItems(Product product) {
    if (quantityProduct.containsKey(product)) {
      quantityProduct[product] = quantityProduct[product]! + 1;
    } else {
      quantityProduct[product] = 1;
    }
    totalAmount += product.price;
  }

  void removeItems(Product product) {
    if (quantityProduct.containsKey(product)) {
      if (quantityProduct[product]! > 1) {
        quantityProduct[product] = quantityProduct[product]! - 1;
      } else {
        quantityProduct.remove(product);
      }
      totalAmount -= product.price;
    }
  }

  int getQuantity(Product product) {
    if (!quantityProduct.containsKey(product)) {
      return 0;
    } else {
      return quantityProduct[product]!;
    }
  }
}
