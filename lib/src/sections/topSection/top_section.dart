import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:flutter/material.dart';

import 'components/logo_blur_box.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.color),
          image: const AssetImage("assets/images/background.png"),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: FractionallySizedBoxComponent(
          child: Stack(
            children: [
              LogoAndBlurBox(size: size),
              const Positioned(
                bottom: 0,
                right: 0,
                child: PersonPic(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
