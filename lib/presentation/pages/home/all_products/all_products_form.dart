import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_demo/data/entities/product_entity.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_bloc.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/widgets/loading_widget.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/widgets/products_widget.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/widgets/retry_widget.dart';
import 'package:ticket_demo/presentation/resource.dart';
import 'package:ticket_demo/presentation/routes/route_constants.dart';

class AllProductForm extends StatefulWidget {
  const AllProductForm({Key? key}) : super(key: key);

  @override
  State<AllProductForm> createState() => _AllProductFormState();
}

class _AllProductFormState extends State<AllProductForm> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<AllProductsBloc>().fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: StreamBuilder<Resource<List<ProductEntity>>>(
          initialData: Resource.loading(),
          stream: context.read<AllProductsBloc>().streamProducts,
          builder: (context, snapshot) {
            return snapshot.data!.map(
              onSuccess: (products) => ProductsWidget(products: products ?? []),
              onLoading: () => const LoadingWidget(),
              onError: (_, error) => const RetryWidget(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RouteConstants.newProduct).then((_) {
            context.read<AllProductsBloc>().fetchProducts();
          });
        },
        child: const Text("+"),
      ),
    );
  }
}
