import 'package:bin_protfolio/localization/app_localizations.dart';
import 'package:bin_protfolio/src/constants/environment.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/menu.dart';
import 'package:flutter/material.dart';

class BottomTabMenu extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index)? onTap;

  const BottomTabMenu({
    super.key,
    required this.selectedIndex,
    this.onTap,
  });

  @override
  @override
  BottomTabMenuState createState() => BottomTabMenuState();
}

class BottomTabMenuState extends State<BottomTabMenu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
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
          (index) => TabItem(
            index: index,
            isHover: widget.selectedIndex != index && hoverIndex == index,
            isSelected: widget.selectedIndex == index,
            onHover: (value) {
              setState(() {
                value ? hoverIndex = index : hoverIndex = widget.selectedIndex;
              });
            },
            onTap: () {
              setState(() {
                if (widget.onTap != null) widget.onTap!(index);
              });
            },
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index, BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isSmall = media.width <= phoneBreak;
    return InkWell(
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
          SizedBox(
            height: 100,
            child: (isSmall)
                ? Tooltip(
                    message: menus[index].name!,
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        menus[index].icon,
                        size: widget.selectedIndex == index
                            ? Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.fontSize
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontSize,
                      ),
                    ),
                  )
                : Center(
                    child: TextComponent(
                      menus[index].name!,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
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
    );
  }
}

class TabItem extends StatelessWidget {
  final int index;
  final bool isHover;
  final bool isSelected;
  final void Function(bool)? onHover;
  final void Function()? onTap;

  const TabItem({
    super.key,
    required this.index,
    required this.isHover,
    required this.isSelected,
    required this.onHover,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isSmall = media.width <= phoneBreak;
    AppLocalizations localizations = AppLocalizations.of(context);
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      child: Stack(
        children: [
          SizedBox(
            height: 100,
            child: (isSmall)
                ? Tooltip(
                    message: localizations.t('menu.${menus[index].name}'),
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        menus[index].icon,
                        color: isSelected
                            ? Theme.of(context).secondaryHeaderColor
                            : IconTheme.of(context).color,
                        size: isSelected
                            ? Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.fontSize
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontSize,
                      ),
                    ),
                  )
                : Center(
                    child: TextComponent(
                      localizations.t('menu.${menus[index].name}'),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
          ),
          // Hover
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: isHover ? -20 : -32,
            child: Image.asset("assets/images/Hover.png"),
          ),
          // Select
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: isSelected ? -2 : -32,
            child: Image.asset("assets/images/Hover.png"),
          ),
        ],
      ),
    );
  }
}
