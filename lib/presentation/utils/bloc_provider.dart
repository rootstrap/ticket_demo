import 'package:flutter/material.dart';

class BlocProvider<T> extends InheritedWidget {
  final T bloc;

  const BlocProvider({
    Key? key,
    required Widget child,
    required this.bloc,
  }) : super(key: key, child: child);

  static T of<T>(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<BlocProvider<T>>()!;
    return provider.bloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

extension BlocExtension on BuildContext {
  T read<T>() => BlocProvider.of(this);
}
