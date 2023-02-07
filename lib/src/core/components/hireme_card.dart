import 'package:bin_protfolio/src/core/components/default_button.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:flutter/material.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3.0),
              blurRadius: 3.0,
              color: const Color(0xFF0700B1).withOpacity(0.15),
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
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                const VerticalDivider(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextComponent(
                        "Starting New Project?",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8.0),
                      Center(
                        child: DefaultButton(
                          text: "Hire Me!",
                          imageSrc: "assets/images/hand.png",
                          press: () {
                            LauncherLinkHelper launcherLinkHelper =
                                LauncherLinkHelper(
                              url:
                                  'https://web.whatsapp.com/send?phone=51971581847',
                            );
                            launcherLinkHelper.launchInBrowser();
                          },
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
