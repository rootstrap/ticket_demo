import 'package:flutter/material.dart';
import 'package:ticket_demo/data/entities/product_entity.dart';

class ProductWidget extends StatelessWidget {
  final ProductEntity product;

  const ProductWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 1), borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 200,
            child: Image.network(product.imageUrl),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
                const SizedBox(height: 8),
                Text(product.description),
                const SizedBox(height: 8),
                Text(product.price.toStringAsFixed(2)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
