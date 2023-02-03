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
                            "Binni has worked on creating mobile applications using Flutter and React Native for Android\nand iOS, and he has experience in connecting native SDK from Java and Swift.\nHe led a team and has experience producing front-end and back-end apps for over 5 years, using\nFirebase and AWS Amazon.\nHe has knowledge in Atom Design, Clean Code, Pattern Design, Refactoring techniques, Unit\ntests, Integration tests, and better practices.\nHe's passionate about new technologies and has a participative attitude in code reviews.",
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
                            "Dear Reader,\nI have a big interest in Mobile Developer positions. I have a Technical degree in informatics and experience working as a Developer for Banking core and E-commerce companies in different countries, which gave me proficiency in mobile features and TypeScript. My education and experience are a great fit for what you need from a Mobile Developer.\nMy professional experience includes designing and crafting code for various mobile applications and then testing the resulting code to meet client needs. I also have experience working in a collaborative environment and presenting status updates to project stakeholders.\nHere are some highlights of my qualifications and professional achievements in mobile application design:\nDesigned and developed an Android and iOS application to banking core called ITU CHILE (Banco Itaú Unibanco S.A) using React Native, Typescript, Redux thunk, and applying Atom Design, with REST API backend in AWS.\nResponsible for developing and maintaining iOS and Android applications for Globant, a Software development company.\nWrote test cases for all new features, in 90% of coverage, and added and performed multiple rounds of regression testing to maintain the quality of the products\nFor Platanitos E-commerce in Peru, I completed rebuilding the Android and iOS application, refined and developed features resulting decrease in crashes to 1%, an increase in user retention by 300%, generating more than 1M users in 3 months, and increasing sales of products.\nAs a personal project, designed and developed an Android Taxi App called Pickpointer, which was successfully deployed in the Google App Store and shows interesting data like available or locked routes for natural disasters or events.\nMy passion for designing useful and appealing mobile application software is what drives me to pursue a career at your company, and my eye for design and user-driven approach to development make me an ideal candidate. If you think I’d be a good fit for the position, then please reach out to set up an interview at your earliest convenience.\nSincerely, Binni Cordova",
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
