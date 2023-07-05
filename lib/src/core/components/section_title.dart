import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title, subTitle;
  final Color color;

  const SectionTitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: FractionallySizedBoxComponent(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  width: 8,
                  height: Theme.of(context).textTheme.titleMedium?.fontSize,
                  color: color,
                ),
                Flexible(
                  child: TextComponent(
                    subTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w200,
                      color: color,
                      shadows: [
                        Shadow(
                          offset: const Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 8,
                  height: Theme.of(context).textTheme.displayMedium?.fontSize,
                  color: Theme.of(context).primaryColor,
                ),
                Flexible(
                  child: TextComponent(
                    title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      shadows: [
                        Shadow(
                          offset: const Offset(3.0, 3.0),
                          blurRadius: 3.0,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
