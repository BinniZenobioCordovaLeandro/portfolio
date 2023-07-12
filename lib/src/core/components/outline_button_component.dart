import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';

class OutlinedButtonComponent extends StatelessWidget {
  final String? title;
  final Function()? onPressed;
  final ButtonStyle? style;

  const OutlinedButtonComponent({
    Key? key,
    this.title,
    this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: style,
      child: Center(
        child: TextComponent(
          '$title',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      ),
    );
  }
}
