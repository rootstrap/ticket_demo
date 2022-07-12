import 'package:flutter/material.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_bloc.dart';
import 'package:ticket_demo/presentation/utils/bloc_provider.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: context.read<NewProductBloc>().setName,
      validator: (value) {
        if (value != null && value.isEmpty) return "Empty value";
        return null;
      },
    );
  }
}
