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
            const SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 2,
                      child: AboutTextWithSign(),
                    ),
                    VerticalDivider(),
                    Expanded(
                      flex: 4,
                      child: AboutSectionText(
                        text:
                            "Binni has worked on creating mobile applications using Flutter and React Native for Android\nand iOS, and he has experience in connecting native SDK from Java and Swift.\nHe led a team and has experience producing front-end and back-end apps for over 5 years, using\nFirebase and AWS Amazon.\nHe has knowledge in Atom Design, Clean Code, Pattern Design, Refactoring techniques, Unit\ntests, Integration tests, and better practices.\nHe's passionate about new technologies and has a participative attitude in code reviews.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60.0),
            const SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: ExperienceCard(numOfExp: "06"),
              ),
            ),
            const SizedBox(height: 60.0),
            const Divider(),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 1110,
              child: WrapComponent(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 220,
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
                    width: 220,
                    child: DefaultButton(
                      imageSrc: "assets/images/download_letter.png",
                      text: "Download Cover Letter",
                      press: () {
                        LauncherLinkHelper launcherLinkHelper =
                            LauncherLinkHelper(
                          url:
                              'https://firebasestorage.googleapis.com/v0/b/binnicordova.appspot.com/o/documents%2Fletter.pdf?alt=media&token=884994d2-a097-42cb-9dcd-3aa1bc3b88a0',
                        );
                        launcherLinkHelper.launchInBrowser();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: DefaultButton(
                      imageSrc: "assets/images/download.png",
                      text: "Download Resume",
                      press: () {
                        LauncherLinkHelper launcherLinkHelper =
                            LauncherLinkHelper(
                          url:
                              'https://firebasestorage.googleapis.com/v0/b/binnicordova.appspot.com/o/documents%2Fresumen.pdf?alt=media&token=44e36dad-b76f-4f0e-bd4d-04053673a473',
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
