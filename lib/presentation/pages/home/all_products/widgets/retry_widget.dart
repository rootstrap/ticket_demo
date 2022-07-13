import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_demo/presentation/custom/ticket_primary_button.dart';
import 'package:ticket_demo/presentation/pages/home/all_products/all_products_bloc.dart';

class RetryWidget extends StatelessWidget {
  const RetryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TicketPrimaryButton(
        text: "Retry",
        onPress: context.read<AllProductsBloc>().fetchProducts,
      ),
    );
  }
}
