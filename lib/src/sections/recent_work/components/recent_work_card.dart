import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/outline_button_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/recent_work.dart';
import 'package:flutter/material.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    super.key,
    required this.recentWork,
    required this.press,
  });

  final RecentWork recentWork;
  final void Function()? press;

  @override
  RecentWorkCardState createState() => RecentWorkCardState();
}

class RecentWorkCardState extends State<RecentWorkCard> {
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
        width: 350,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 3.00),
                blurRadius: 15,
                color: widget.recentWork.color ?? Colors.black.withOpacity(0.1),
              )
          ],
        ),
        child: AspectRatio(
          aspectRatio: 16 / 9,
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
                        color: widget.recentWork.color ??
                            Colors.black.withOpacity(0.1),
                      )
                  ],
                ),
                child: (Theme.of(context).brightness == Brightness.dark &&
                        widget.recentWork.imageDark != null)
                    ? Image.asset(widget.recentWork.imageDark!)
                    : Image.asset(widget.recentWork.image!),
              ),
              Expanded(
                child: FractionallySizedBoxComponent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextComponent(
                        widget.recentWork.title!.toUpperCase(),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextComponent(
                        widget.recentWork.description!,
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
                            '${widget.recentWork.position} ${widget.recentWork.technology}',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: OutlinedButtonComponent(
                              title: "${widget.recentWork.downloads} Downloads",
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  return widget.recentWork.color!
                                      .withOpacity(0.3);
                                }),
                              ),
                              onPressed: () {
                                LauncherLinkHelper launcherLinkHelper =
                                    LauncherLinkHelper(
                                  url: widget.recentWork.link!,
                                );
                                launcherLinkHelper.launchInBrowser();
                              },
                            ),
                          ),
                          const VerticalDivider(),
                          if (widget.recentWork.duration != null)
                            CircleAvatar(
                              backgroundColor: widget.recentWork.color,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: TextComponent(
                                  widget.recentWork.year!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
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
      ),
    );
  }
}
