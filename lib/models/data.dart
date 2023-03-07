import 'product_model.dart';

class Data {
  static List<ProductModel> generateProducts() {
    return [
      ProductModel(1, "assets/1.png", "Nike Jordan", "BEST SELLER", 493.00),
      ProductModel(2, "assets/2.png", "Nike Air Max", "BEST SELLER", 897.99),
    ];
  }

  static List<ProductCategory> generateCategories() {
    return [
      ProductCategory(1, "assets/5.png"),
      ProductCategory(2, "assets/10.png"),
      ProductCategory(3, "assets/11.png"),
      ProductCategory(4, "assets/12.png"),
      ProductCategory(4, "assets/15.png"),
    ];
  }
}
