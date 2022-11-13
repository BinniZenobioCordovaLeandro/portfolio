import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/RecentWork.dart';
import 'package:bin_protfolio/src/models/Skill.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  // just press "Command + ."
  const SkillCard({
    super.key,
    required this.skill,
    required this.press,
  });

  final void Function()? press;
  final Skill skill;

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
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
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 3.00),
                blurRadius: 15,
                color: Theme.of(context).primaryColor,
              )
          ],
        ),
        child: SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComponent("${widget.skill.name}"),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComponent("${widget.skill.experience}",
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Colors.white,
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
