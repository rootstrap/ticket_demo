import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_demo/data/repositories/product_repository_impl.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_bloc.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_form.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => NewProductBloc(ProductRepositoryImpl()),
      child: const NewProductForm(),
    );
  }
}
