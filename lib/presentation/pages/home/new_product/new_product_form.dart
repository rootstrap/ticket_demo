import 'package:flutter/material.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/widgets/confirm_button.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/widgets/description_input_field.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/widgets/name_input_field.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/widgets/price_input_field.dart';

class NewProductForm extends StatelessWidget {
  const NewProductForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name:"),
                const NameInputField(),
                const SizedBox(height: 16),
                const Text("Description:"),
                const DescriptionInputField(),
                const SizedBox(height: 16),
                const Text("Price:"),
                const PriceInputField(),
                const SizedBox(height: 16),
                ConfirmButton(formKey: formKey)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
