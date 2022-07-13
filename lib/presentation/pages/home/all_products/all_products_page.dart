import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_demo/data/repositories/product_repository_impl.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_bloc.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_form.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Provider<AllProductsBloc>(
        create: (BuildContext context) {
          return AllProductsBloc(ProductRepositoryImpl());
        },
        child: const AllProductForm(),
        dispose: (context, bloc) {
          bloc.dispose();
        },
      ),
    );
  }
}
