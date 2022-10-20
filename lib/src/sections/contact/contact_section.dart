import 'package:bin_protfolio/src/core/components/default_button.dart';
import 'package:bin_protfolio/src/core/components/form_component.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/text_field_widget.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/Social.dart';
import 'package:flutter/material.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: const AssetImage(
            "assets/images/bg_img_2.png",
          ),
          colorFilter: ColorFilter.mode(
            Theme.of(context).scaffoldBackgroundColor,
            BlendMode.color,
          ),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: 20.0),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          SizedBox(height: 20.0),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.50),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: FractionallySizedBoxComponent(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                WrapComponent(
                  alignment: WrapAlignment.spaceBetween,
                  children: List.generate(
                    socials.length,
                    (index) => SocialCard(
                      color: socials[index].color!,
                      iconSrc: socials[index].image!,
                      name: socials[index].name!,
                      press: (socials[index].link != null)
                          ? () {
                              LauncherLinkHelper launcherLinkHelper =
                                  LauncherLinkHelper(
                                url: socials[index].link!,
                              );
                              launcherLinkHelper.launchInBrowser();
                            }
                          : null,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const ContactForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormComponent(
      child: WrapComponent(
        children: [
          SizedBox(
            width: 470,
            child: TextFieldComponent(
              labelText: 'Your Name',
              helperText: 'Enter Your Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Name';
                }
                return null;
              },
              onChanged: (String string) {},
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFieldComponent(
              labelText: 'Email Address',
              helperText: 'Enter your email address',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your email address';
                }
                return null;
              },
              onChanged: (String string) {},
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFieldComponent(
              labelText: 'Project Type',
              helperText: 'Enter your project Type',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your project Type';
                }
                return null;
              },
              onChanged: (String string) {},
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFieldComponent(
              labelText: 'Project Budget',
              helperText: 'Enter your project Budget',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your project Budget';
                }
                return null;
              },
              onChanged: (String string) {},
            ),
          ),
          SizedBox(
            child: TextFieldComponent(
              labelText: 'Description',
              helperText: 'Write some description',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Write some description';
                }
                return null;
              },
              onChanged: (String string) {},
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: DefaultButton(
              imageSrc: "assets/images/contact_icon.png",
              text: "Contact Me!",
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}
