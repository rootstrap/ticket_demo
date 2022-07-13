import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/domain/repositories/product_repository.dart';

class NewProductBloc{
  final ProductRepository _productRepository;

  NewProductBloc(this._productRepository);

  String _name = "";
  String _description = "";
  String _price = "";

  Future<void> addProduct() {
    return _productRepository.addProduct(ProductEntity(
      name: _name,
      description: _description,
      imageUrl: "https://i.pinimg.com/originals/1f/a1/16/1fa11696b0bf7b71a58e92685c2f8934.jpg",
      price: double.parse(_price),
    ));
  }

  void setName(String name) {
    _name = name;
  }

  void setDescription(String description) {
    _description = description;
  }

  void setPrice(String price) {
    _price = price;
  }
}
