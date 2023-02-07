import 'package:bin_protfolio/src/core/components/default_button.dart';
import 'package:bin_protfolio/src/core/components/form_component.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/text_field_widget.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/social.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A),
            ),
            const SizedBox(height: 20.0),
            Container(
              constraints: const BoxConstraints(maxWidth: 1110),
              child: FractionallySizedBoxComponent(
                child: WrapComponent(
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
              ),
            ),
            const SizedBox(height: 20.0),
            const ContactBox(),
            const SizedBox(height: 120.0),
          ],
        ),
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
      child: const Center(
        child: FractionallySizedBoxComponent(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ContactForm(),
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    super.key,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String? name, email, project, amount, description;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FormComponent(
      key: formKey,
      child: WrapComponent(
        alignment: WrapAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 360,
            child: TextFieldComponent(
              labelText: 'Your Name',
              helperText: 'Enter Your Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Name';
                }
                return null;
              },
              onChanged: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
          ),
          SizedBox(
            width: 360,
            child: TextFieldComponent(
              labelText: 'Email Address',
              helperText: 'Enter your email address',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your email address';
                }
                return null;
              },
              onChanged: (String string) {
                setState(() {
                  email = string;
                });
              },
            ),
          ),
          SizedBox(
            width: 360,
            child: TextFieldComponent(
              labelText: 'Project Type',
              helperText: 'Enter your project Type',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your project Type';
                }
                return null;
              },
              onChanged: (String string) {
                setState(() {
                  project = string;
                });
              },
            ),
          ),
          SizedBox(
            width: 360,
            child: TextFieldComponent(
              labelText: 'Project Budget',
              helperText: 'Enter your project Budget',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your project Budget';
                }
                return null;
              },
              onChanged: (String string) {
                setState(() {
                  amount = string;
                });
              },
            ),
          ),
          SizedBox(
            child: TextFieldComponent(
              labelText: 'Description',
              helperText: 'Write some description',
              maxLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Write some description';
                }
                return null;
              },
              onChanged: (String string) {
                setState(() {
                  description = string;
                });
              },
            ),
          ),
          const SizedBox(height: 8.00),
          SizedBox(
            width: 360,
            child: DefaultButton(
              imageSrc: "assets/images/contact_icon.png",
              text: "Contact Me!",
              press: () {
                bool isValidForm = formKey.currentState!.validate();
                if (isValidForm) {
                  LauncherLinkHelper launcherLinkHelper = LauncherLinkHelper(
                    url: 'binni.2000.cordova@gmail.com',
                    isMail: true,
                    params: {
                      'subject': '$project + $amount',
                      'body': 'From: $name, $email \n$description'
                    },
                  );
                  launcherLinkHelper.sendEmail();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
