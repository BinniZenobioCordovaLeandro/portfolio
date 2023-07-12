import 'package:bin_protfolio/localization/app_localizations.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:flutter/material.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComponent(
          localizations.t('about.title'),
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
