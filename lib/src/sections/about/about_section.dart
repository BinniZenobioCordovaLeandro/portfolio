import 'package:bin_protfolio/src/core/default_button.dart';
import 'package:bin_protfolio/src/core/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/my_outline_button.dart';
import 'package:bin_protfolio/src/core/wrap_component.dart';
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
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: FractionallySizedBoxComponent(
        child: WrapComponent(
          children: [
            Flex(
              direction: Axis.horizontal,
              children: const [
                AboutTextWithSign(),
                VerticalDivider(),
                Expanded(
                  flex: 3,
                  child: AboutSectionText(
                    text:
                        "Hi, I'm a Flutter Developer with e-commerce experience.\nI like write clean and structured code, always oriented to OOP and modular code.\nI look for code challenges to break!.\nI prefer the full remote work.\nTo contact me fast, we can use Calendly to separate and schedule, and make a Meet https://calendly.com/binnizenobiocordovaleandro/meet",
                  ),
                ),
              ],
            ),
            const Divider(),
            Flex(
              direction: Axis.horizontal,
              children: const [
                ExperienceCard(numOfExp: "05"),
                VerticalDivider(),
                Expanded(
                  flex: 3,
                  child: AboutSectionText(
                    text:
                        "Binni has worked on creating mobile applications using Flutter and React Native for Android\nand iOS, and he has experience in connecting native SDK from Java and Swift.\nHe led a team and has experience producing front-end and back-end apps for more than 4 years,\nusing Firebase and AWS Amazon.\nHe has knowledge in Atom Design, Clean Code, Pattern Design, Refactoring techniques, Unit\ntests, Integration tests, and better practices.\nHe's passionate about new technologies and has a participative attitude in code reviews",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded(
                //   child:
                // MyOutlineButton(
                //   imageSrc: "assets/images/hand.png",
                //   text: "Hire Me!",
                //   press: () {},
                // ),
                // ),
                const SizedBox(width: 20.0 * 1.5),
                // DefaultButton(
                //   imageSrc: "assets/images/download.png",
                //   text: "Download CV",
                //   press: () {},
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
