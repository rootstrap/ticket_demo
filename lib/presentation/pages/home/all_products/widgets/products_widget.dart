import 'package:flutter/material.dart';
import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/widgets/product_widget.dart';
import 'package:ticket_demo/presentation/routes/route_constants.dart';

class ProductsWidget extends StatelessWidget {
  final List<ProductEntity> products;

  const ProductsWidget({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
              RouteConstants.productDetail,
              arguments: product,
            ),
            child: ProductWidget(
              product: product,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16));
  }
}
