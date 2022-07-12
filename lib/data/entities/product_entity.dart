class ProductEntity {
  String? id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  ProductEntity({
    this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      name: map['name'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as double,
    );
  }
}
