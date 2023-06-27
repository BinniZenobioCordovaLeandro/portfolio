import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/hireme_card.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/models/recent_work.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const SectionTitle(
              title: "Recent Works",
              subTitle: "My great works",
              color: Color(0xFFFFB100),
            ),
            const SizedBox(height: 20.0),
            for (var type in workType)
              SizedBox(
                width: 1110,
                child: FractionallySizedBoxComponent(
                  child: WrapComponent(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextComponent(
                            "${type.title}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                              color: type.color,
                              shadows: [
                                Shadow(
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 3.0,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      for (var work in recentWorks
                          .where((element) => type.id == element.workType?.id))
                        RecentWorkCard(
                          recentWork: work,
                          press: () {},
                        ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20.0),
            const SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: HireMeCard(),
              ),
            ),
            const SizedBox(height: 120.0),
          ],
        ),
      ),
    );
  }
}
