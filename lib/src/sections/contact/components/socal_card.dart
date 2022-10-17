import 'package:flutter/material.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
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
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
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
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: 20.0 / 2,
            horizontal: 20.0 * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 50,
                  color: Colors.black.withOpacity(0.1),
                )
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: 20.0),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
