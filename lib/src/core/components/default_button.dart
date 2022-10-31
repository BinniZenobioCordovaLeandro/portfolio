import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0 * 2.5,
        ),
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            const SizedBox(width: 20.0),
            Text(text),
          ],
        ),
      ),
    );
  }
}
