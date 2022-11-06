class ProductModel {
  final int id;
  final double price;
  final String title, description, image, brandImage;
  final bool isFavorite;
  final List<int> sizes;

  ProductModel(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image,
      required this.sizes,
      required this.brandImage,
      this.isFavorite = false});
}
