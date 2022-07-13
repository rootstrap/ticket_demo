import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_bloc.dart';

class DescriptionInputField extends StatelessWidget {
  const DescriptionInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: context.read<NewProductBloc>().setDescription,
      validator: (value) {
        if (value != null && value.isEmpty) return "Empty value";
        return null;
      },
    );
  }
}
