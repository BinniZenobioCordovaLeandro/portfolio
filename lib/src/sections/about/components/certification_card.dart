import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/models/certification.dart';
import 'package:flutter/material.dart';

class CertificationCard extends StatelessWidget {
  final Certification certification;
  final void Function()? onTap;

  const CertificationCard({
    super.key,
    required this.certification,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset(
              certification.image!,
              height: 100,
              fit: BoxFit.contain,
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      "${certification.title}".toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8.0),
                    if (certification.aptitudes?.isNotEmpty == true)
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          for (var aptitud in certification.aptitudes!)
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: TextComponent(aptitud),
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(Icons.download_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
