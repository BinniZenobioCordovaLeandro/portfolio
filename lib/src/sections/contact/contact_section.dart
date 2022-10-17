import 'package:bin_protfolio/src/core/default_button.dart';
import 'package:bin_protfolio/src/core/form_component.dart';
import 'package:bin_protfolio/src/core/section_title.dart';
import 'package:bin_protfolio/src/core/text_field_widget.dart';
import 'package:bin_protfolio/src/core/wrap_component.dart';
import 'package:flutter/material.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
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
      margin: const EdgeInsets.only(top: 20.0 * 2),
      padding: const EdgeInsets.all(20.0 * 3),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          WrapComponent(
            children: [
              SocalCard(
                color: const Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'Skype',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'WhatsApp',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'Messenger',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'LinkedIn',
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const ContactForm(),
        ],
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
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
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
          // Center(
          //   child: FittedBox(
          //     child: DefaultButton(
          //       imageSrc: "assets/images/contact_icon.png",
          //       text: "Contact Me!",
          //       press: () {},
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
