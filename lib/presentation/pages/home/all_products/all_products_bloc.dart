import 'dart:async';

import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/domain/repositories/product_repository.dart';
import 'package:ticket_demo/presentation/resource.dart';

class AllProductsBloc {
  final ProductRepository _productRepository;

  AllProductsBloc(this._productRepository);

  final _productsController = StreamController<Resource<List<ProductEntity>>>();

  StreamSink<Resource<List<ProductEntity>>> get sinkProducts => _productsController.sink;

  Stream<Resource<List<ProductEntity>>> get streamProducts => _productsController.stream;

  void fetchProducts() {
    sinkProducts.add(Resource.loading());
    _productRepository.getProducts().then((products) {
      sinkProducts.add(Resource.success(data: products));
    }, onError: (e) {
      sinkProducts.add(Resource.error(error: e.toString()));
    });
  }
}
