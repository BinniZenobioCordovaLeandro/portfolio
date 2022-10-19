import 'package:bin_protfolio/src/core/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/outline_button_component.dart';
import 'package:bin_protfolio/src/core/text_component.dart';
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
        duration: Duration(milliseconds: 200),
        height: 200,
        width: 360,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(recentWorks[widget.index].image!),
            Expanded(
              child: FractionallySizedBoxComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextComponent(
                      recentWorks[widget.index].category!.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextComponent(
                      recentWorks[widget.index].title!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(height: 1.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: OutlinedButtonComponent(
                            title: "See project",
                            onPressed: () {},
                          ),
                        ),
                        const VerticalDivider(),
                        if (recentWorks[widget.index].duration != null)
                          CircleAvatar(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextComponent(
                                recentWorks[widget.index].duration!,
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
                    )
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
