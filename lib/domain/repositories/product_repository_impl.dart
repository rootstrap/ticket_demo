import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/data/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final products = FirebaseFirestore.instance.collection("products");

  @override
  Future<void> addProduct(ProductEntity product) async {
    await products.add(product.toMap());
  }

  @override
  Future<void> deleteProduct(ProductEntity product) async {
    await products.doc(product.id).delete();
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
    final snapshot = await products.get();
    return snapshot.docs.map((e) => ProductEntity.fromMap(e.data())..id = e.id).toList();
  }

  @override
  Future<void> updateProduct({required String id, String? name, String? description, String? imageUrl, double? price}) async {
    final updateData = <String, Object?>{};
    if (name != null) updateData["name"] = name;
    if (description != null) updateData["description"] = description;
    if (imageUrl != null) updateData["imageUrl"] = imageUrl;
    if (price != null) updateData["description"] = price;
    await products.doc(id).update(updateData);
  }
}
