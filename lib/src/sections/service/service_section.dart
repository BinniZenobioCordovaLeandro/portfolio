import 'package:bin_protfolio/src/core/section_title.dart';
import 'package:bin_protfolio/src/core/wrap_component.dart';
import 'package:bin_protfolio/src/models/Service.dart';
import 'package:flutter/material.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Areas",
          ),
          const SizedBox(height: 20.0),
          WrapComponent(
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          )
        ],
      ),
    );
  }
}
