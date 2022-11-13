import 'package:flutter/material.dart';

class FractionallySizedBoxComponent extends StatelessWidget {
  final Widget? child;
  final double? widthFactor;
  final double? heightFactor;

  const FractionallySizedBoxComponent({
    Key? key,
    this.child,
    this.widthFactor = 0.9,
    this.heightFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: child,
    );
  }
}
