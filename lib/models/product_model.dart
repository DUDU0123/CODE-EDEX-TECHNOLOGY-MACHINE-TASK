class ProductModel {
  final String name;
  final String price;
  final String image;
  final String store;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.store,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      price: json['price'],
      image: json['image'] ?? '',
      store: json['store'] ?? '',
    );
  }
}
