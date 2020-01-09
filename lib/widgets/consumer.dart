import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Consumer<T> extends StatelessWidget {
  Consumer({
    Key key,
    @required this.builder,
    this.child,
  })  : assert(builder != null),
        super(key: key);

  final Widget child;

  final Widget Function(BuildContext context, T value, Widget child) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<T>(context), //自动获取Model
      child
    );
  }
}