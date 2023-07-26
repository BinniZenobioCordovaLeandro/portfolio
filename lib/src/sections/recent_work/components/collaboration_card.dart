import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/collaboration.dart';
import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  final Collaboration collaboration;
  final void Function()? onTap;

  const CollaborationCard({
    super.key,
    required this.collaboration,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  collaboration.image!,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComponent(
                    "${collaboration.title}".toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Divider(),
                  TextComponent(
                    "${collaboration.description}",
                    maxLines: 3,
                  ),
                  const Divider(),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      for (var tag in collaboration.tags!)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Card(
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextComponent(tag),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
