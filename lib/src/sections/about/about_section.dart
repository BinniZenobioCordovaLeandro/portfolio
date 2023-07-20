import 'package:bin_protfolio/localization/app_localizations.dart';
import 'package:bin_protfolio/src/core/components/default_button.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/my_outline_button.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/certification.dart';
import 'package:bin_protfolio/src/sections/about/components/certification_card.dart';
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
    AppLocalizations localizations = AppLocalizations.of(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: AboutTextWithSign(),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: AboutSectionText(
                        text: localizations.t('about.description'),
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
                      text: localizations.t('about.hire_me'),
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
                      text: localizations.t('about.letter'),
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
                      text: localizations.t('about.resume'),
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
            const SizedBox(height: 60.0),
            const Divider(),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: FractionallySizedBoxComponent(
                child: TextComponent(
                  localizations.t('about.certification'),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            for (var certifcation in certifications)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: FractionallySizedBoxComponent(
                    child: CertificationCard(
                      certification: certifcation,
                      onTap: () {
                        LauncherLinkHelper launcherLinkHelper =
                            LauncherLinkHelper(
                          url: certifcation.link!,
                        );
                        launcherLinkHelper.launchInBrowser();
                      },
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 120.0),
          ],
        ),
      ),
    );
  }
}
