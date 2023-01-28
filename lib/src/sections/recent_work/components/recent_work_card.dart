import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/outline_button_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/RecentWork.dart';
import 'package:flutter/material.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    super.key,
    required this.index,
    required this.press,
  });

  final int index;
  final void Function()? press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 200,
        width: 360,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 3.00),
                blurRadius: 15,
                color: recentWorks[widget.index].color ??
                    Colors.black.withOpacity(0.1),
              )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedContainer(
              duration: duration,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 3.00),
                      blurRadius: 13,
                      color: recentWorks[widget.index].color ??
                          Colors.black.withOpacity(0.1),
                    )
                ],
              ),
              child: (Theme.of(context).brightness == Brightness.dark &&
                      recentWorks[widget.index].imageDark != null)
                  ? Image.asset(recentWorks[widget.index].imageDark!)
                  : Image.asset(recentWorks[widget.index].image!),
            ),
            Expanded(
              child: FractionallySizedBoxComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextComponent(
                      recentWorks[widget.index].title!.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextComponent(
                      recentWorks[widget.index].description!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(height: 1.5),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Opacity(
                        opacity: 0.5,
                        child: TextComponent(
                          '${recentWorks[widget.index].position} ${recentWorks[widget.index].technology}',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: OutlinedButtonComponent(
                            title: "See project",
                            onPressed: () {
                              LauncherLinkHelper launcherLinkHelper =
                                  LauncherLinkHelper(
                                url: recentWorks[widget.index].link!,
                              );
                              launcherLinkHelper.launchInBrowser();
                            },
                          ),
                        ),
                        const VerticalDivider(),
                        if (recentWorks[widget.index].duration != null)
                          CircleAvatar(
                            backgroundColor: recentWorks[widget.index].color,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextComponent(
                                recentWorks[widget.index].year!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color: Colors.white,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
