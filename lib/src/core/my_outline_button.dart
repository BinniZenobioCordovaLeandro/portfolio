import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(color: Color(0xFFEDEDED)),
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0 * 2.5,
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            const SizedBox(width: 20.0),
            Text(text)
          ],
        ),
      ),
    );
  }
}
