import 'package:bin_protfolio/src/core/text_component.dart';
import 'package:flutter/material.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComponent(
          "About \nmy story",
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
