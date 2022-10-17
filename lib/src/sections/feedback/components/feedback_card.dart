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
        margin: EdgeInsets.only(top: 20.0 * 3),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
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
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.1),
                      )
                  ],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic!),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review!,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(height: 20.0 * 2),
            Text(
              "Ronald Thompson",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
