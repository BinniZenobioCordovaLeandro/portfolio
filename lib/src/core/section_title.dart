import 'package:bin_protfolio/src/core/text_component.dart';
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
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      child: FractionallySizedBox(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 72),
              width: 8,
              height: 100,
              color: Theme.of(context).primaryColor,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
            const VerticalDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextComponent(
                  subTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: color,
                  ),
                ),
                TextComponent(
                  title,
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
