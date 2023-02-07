import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  });

  final String iconSrc, name;
  final Color color;
  final Function()? press;

  @override
  SocialCardState createState() => SocialCardState();
}

class SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            vertical: 20.0 / 2,
            horizontal: 20.0 * 1.5,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  offset: const Offset(0, 3.00),
                  blurRadius: 15,
                  color: widget.color,
                )
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
              const VerticalDivider(),
              TextComponent(
                widget.name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
