import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/models/feedback.dart';
import 'package:flutter/material.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const SectionTitle(
              title: "Feedback Received",
              subTitle: "Coworkers testimonials that inspired me a lot",
              color: Color(0xFF00B1FF),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: WrapComponent(
                  children: List.generate(
                    feedbacks.length,
                    (index) => FeedbackCard(index: index),
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
