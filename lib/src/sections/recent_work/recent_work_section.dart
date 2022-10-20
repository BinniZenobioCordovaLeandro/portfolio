import 'package:bin_protfolio/src/core/components/hireme_card.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/models/RecentWork.dart';
import 'package:bin_protfolio/src/sections/recent_work/components/recent_work_card.dart';
import 'package:flutter/material.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const SectionTitle(
            title: "Recent Works",
            subTitle: "My great works",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: 1110,
            child: WrapComponent(
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                  index: index,
                  press: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const SizedBox(
            width: 1110,
            child: HireMeCard(),
          ),
        ],
      ),
    );
  }
}
