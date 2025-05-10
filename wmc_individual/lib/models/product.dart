class Product {
  String name;
  String description;
  double price;
  String image;
  bool isFavorited;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.isFavorited = false,
  });
}
