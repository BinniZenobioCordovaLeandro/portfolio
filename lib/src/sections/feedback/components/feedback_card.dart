import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:bin_protfolio/src/models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  final Comment comment;

  const FeedbackCard({
    super.key,
    required this.comment,
  });

  @override
  FeedbackCardState createState() => FeedbackCardState();
}

class FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
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
                color: widget.comment.color ?? Colors.black.withOpacity(0.1),
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
                      color: widget.comment.color!,
                      width: 10,
                    ),
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: const Offset(0, 3.00),
                          blurRadius: 13,
                          color: widget.comment.color ??
                              Colors.black.withOpacity(0.1),
                        )
                    ],
                    image: DecorationImage(
                      image: AssetImage(widget.comment.userPic!),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      TextComponent(
                        widget.comment.title ?? '',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: TextComponent(
                          widget.comment.review!,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextComponent(
                        widget.comment.name!,
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
