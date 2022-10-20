import 'package:flutter/material.dart';

class FractionallySizedBoxComponent extends StatelessWidget {
  final Widget? child;
  final double? widthFactor;

  const FractionallySizedBoxComponent({
    Key? key,
    this.child,
    this.widthFactor = 0.9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: child,
    );
  }
}
