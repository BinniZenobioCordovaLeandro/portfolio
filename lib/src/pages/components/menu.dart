import 'package:bin_protfolio/src/constants/environment.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/Menu.dart';
import 'package:flutter/material.dart';

class BottomTabMenu extends StatefulWidget {
  int selectedIndex = 0;
  void Function(int index)? onTap;

  BottomTabMenu({
    required this.selectedIndex,
    this.onTap,
  });

  @override
  _BottomTabMenuState createState() => _BottomTabMenuState();
}

class _BottomTabMenuState extends State<BottomTabMenu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3.00),
            blurRadius: 15,
            color: const Color(0xFF0700B1).withOpacity(0.15),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menus.length,
          (index) => buildMenuItem(index, context),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index, BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isSmall = media.width <= PHONE_BREAK;
    return Tooltip(
      message: menus[index].name!,
      child: InkWell(
        onTap: () {
          setState(() {
            if (widget.onTap != null) widget.onTap!(index);
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = widget.selectedIndex;
          });
        },
        child: Stack(
          children: [
            if (isSmall)
              AnimatedSize(
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  menus[index].icon,
                  size: widget.selectedIndex == index
                      ? IconTheme.of(context).size! * 1.5
                      : IconTheme.of(context).size,
                ),
              )
            else
              TextComponent(
                menus[index].name!,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            // Hover
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: widget.selectedIndex != index && hoverIndex == index
                  ? -20
                  : -32,
              child: Image.asset("assets/images/Hover.png"),
            ),
            // Select
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: widget.selectedIndex == index ? -2 : -32,
              child: Image.asset("assets/images/Hover.png"),
            ),
          ],
        ),
      ),
    );
  }
}
