import 'package:flutter/material.dart';
import 'package:ticket_demo/data/repositories/product_repository_impl.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_bloc.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_form.dart';
import 'package:ticket_demo/presentation/utils/bloc_provider.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<AllProductsBloc>(
        bloc: AllProductsBloc(ProductRepositoryImpl()),
        child: const AllProductForm(),
      ),
    );
  }
}
