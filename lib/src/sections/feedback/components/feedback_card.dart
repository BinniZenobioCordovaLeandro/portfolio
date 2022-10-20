import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/Feedback.dart';
import 'package:flutter/material.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        width: 360,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 3.00),
                blurRadius: 15,
                color: feedbacks[widget.index].color ??
                    Colors.black.withOpacity(0.1),
              )
          ],
        ),
        child: FractionallySizedBoxComponent(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: duration,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: feedbacks[widget.index].color!,
                      width: 10,
                    ),
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: const Offset(0, 3.00),
                          blurRadius: 13,
                          color: feedbacks[widget.index].color ??
                              Colors.black.withOpacity(0.1),
                        )
                    ],
                    image: DecorationImage(
                      image: AssetImage(feedbacks[widget.index].userPic!),
                    ),
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                  child: Column(
                    children: [
                      TextComponent(
                        feedbacks[widget.index].title ?? '',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      TextComponent(
                        feedbacks[widget.index].review!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                      const Divider(),
                      TextComponent(
                        feedbacks[widget.index].name!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
