class ProductModel {
  int id;
  String image;
  String title;
  String type;

  double price;

  ProductModel(this.id, this.image, this.title, this.type, this.price);
}

class ProductCategory {
  int id;
  String image;

  ProductCategory(this.id, this.image);
}
