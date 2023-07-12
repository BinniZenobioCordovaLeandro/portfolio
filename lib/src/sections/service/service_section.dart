import 'package:bin_protfolio/localization/app_localizations.dart';
import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/models/service.dart';
import 'package:flutter/material.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              SectionTitle(
                color: const Color(0xFFFF0000),
                title: localizations.t("service.title"),
                subTitle: localizations.t("service.subTitle"),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 1110,
                child: FractionallySizedBoxComponent(
                  child: WrapComponent(
                    children: List.generate(
                      services.length,
                      (index) => ServiceCard(index: index),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 120.0),
            ],
          ),
        ),
      ),
    );
  }
}
