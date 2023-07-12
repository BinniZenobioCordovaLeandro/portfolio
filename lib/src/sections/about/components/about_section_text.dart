import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';

class AboutSectionText extends StatelessWidget {
  final String text;

  const AboutSectionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextComponent(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w200,
            ),
      ),
    );
  }
}
