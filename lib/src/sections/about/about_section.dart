import 'package:bin_protfolio/src/core/components/default_button.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/my_outline_button.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:flutter/material.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: Flex(
                  direction: Axis.horizontal,
                  children: const [
                    Expanded(
                      flex: 2,
                      child: AboutTextWithSign(),
                    ),
                    VerticalDivider(),
                    Expanded(
                      flex: 4,
                      child: AboutSectionText(
                        text:
                            "Hi, I'm a Flutter Developer with e-commerce experience.\nI like write clean and structured code, always oriented to OOP and modular code.\nI look for code challenges to break!.\nI prefer the full remote work.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: Flex(
                  direction: Axis.horizontal,
                  children: const [
                    Expanded(
                      flex: 2,
                      child: ExperienceCard(numOfExp: "05"),
                    ),
                    VerticalDivider(),
                    Expanded(
                      flex: 4,
                      child: AboutSectionText(
                        text:
                            "Binni has worked on creating mobile applications using Flutter and React Native for Android\nand iOS, and he has experience in connecting native SDK from Java and Swift.\nHe led a team and has experience producing front-end and back-end apps for more than 4 years,\nusing Firebase and AWS Amazon.\nHe has knowledge in Atom Design, Clean Code, Pattern Design, Refactoring techniques, Unit\ntests, Integration tests, and better practices.\nHe's passionate about new technologies and has a participative attitude in code reviews",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Divider(),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 1110,
              child: WrapComponent(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 360,
                    child: MyOutlineButton(
                      imageSrc: "assets/images/hand.png",
                      text: "Hire Me!",
                      press: () {
                        LauncherLinkHelper launcherLinkHelper =
                            LauncherLinkHelper(
                          url:
                              'https://web.whatsapp.com/send?phone=51971581847',
                        );
                        launcherLinkHelper.launchInBrowser();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 360,
                    child: DefaultButton(
                      imageSrc: "assets/images/download.png",
                      text: "Download CV",
                      press: () {
                        LauncherLinkHelper launcherLinkHelper =
                            LauncherLinkHelper(
                          url:
                              'https://github.com/BinniZenobioCordovaLeandro/portfolio/blob/main/docs/assets/assets/documents/resumen.pdf',
                        );
                        launcherLinkHelper.launchInBrowser();
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120.0),
          ],
        ),
      ),
    );
  }
}
