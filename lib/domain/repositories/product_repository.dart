import 'package:ticket_demo/data/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();

  Future<void> addProduct(ProductEntity product);

  Future<void> deleteProduct(ProductEntity product);

  Future<void> updateProduct({
    required String id,
    String? name,
    String? description,
    String? imageUrl,
    double? price,
  });
}
