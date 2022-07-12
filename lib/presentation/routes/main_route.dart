import 'package:flutter/material.dart';
import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_page.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_page.dart';
import 'package:ticket_demo/presentation/pages/home/product_detail/product_detail.dart';
import 'package:ticket_demo/presentation/routes/route_constants.dart';
import 'package:ticket_demo/presentation/utils/cast_extensions.dart';

Route<dynamic> mainRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteConstants.products:
      return MaterialPageRoute(builder: (_) => const AllProductsPage());
    case RouteConstants.productDetail:
      final product = castOrNull<ProductEntity>(settings.arguments);
      return MaterialPageRoute(builder: (_) => ProductDetailPage(product: product!));
    case RouteConstants.newProduct:
      return MaterialPageRoute(builder: (_) => const NewProductPage());
    default:
      return MaterialPageRoute(builder: (_) => const Center(child: Text("Invalid route")));
  }
}
