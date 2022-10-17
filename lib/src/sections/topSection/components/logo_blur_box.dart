import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  final Size size;

  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        const Spacer(),
        Center(
          child: GlassContent(size: size),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
