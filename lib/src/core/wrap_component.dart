import 'package:flutter/material.dart';

class WrapComponent extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final double runSpacing;
  final WrapAlignment alignment;

  const WrapComponent({
    Key? key,
    required this.children,
    this.spacing = 8,
    this.runSpacing = 16,
    this.alignment = WrapAlignment.spaceBetween,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      alignment: alignment,
      children: children,
    );
  }
}
