class Product {
  final String photo;
  final String title;
  final String description;
  final String price;
  final String parcelled;
  bool isFavorite;

  Product({
    required this.photo,
    required this.title,
    required this.description,
    required this.price,
    required this.parcelled,
    this.isFavorite = false,
  });
}
