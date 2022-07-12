import 'package:flutter/material.dart';
import 'package:ticket_demo/presentation/custom/ticket_primary_button.dart';
import 'package:ticket_demo/presentation/pages/home/new_product/new_product_bloc.dart';
import 'package:ticket_demo/presentation/utils/bloc_provider.dart';

class ConfirmButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ConfirmButton({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TicketPrimaryButton(
        text: "Confirm",
        onPress: () {
          if (formKey.currentState!.validate()) {
            context.read<NewProductBloc>().addProduct().then((_) {
              Navigator.of(context).pop();
            }, onError: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.toString()),
                ),
              );
            });
          }
        },
      ),
    );
  }
}
