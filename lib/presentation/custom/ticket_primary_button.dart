import 'package:flutter/material.dart';

class TicketPrimaryButton extends StatelessWidget {
  final EdgeInsets padding;
  final String text;
  final VoidCallback? onPress;

  const TicketPrimaryButton({
    Key? key,
    this.padding = const EdgeInsets.all(16),
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        primary: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
      ),
    );
  }
}
