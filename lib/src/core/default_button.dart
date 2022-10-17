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
      // padding: EdgeInsets.symmetric(
      //   vertical: 20.0,
      //   horizontal: 20.0 * 2.5,
      // ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      // color: Color(0xFFE8F0F9),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          SizedBox(width: 20.0),
          Text(text),
        ],
      ),
    );
  }
}
