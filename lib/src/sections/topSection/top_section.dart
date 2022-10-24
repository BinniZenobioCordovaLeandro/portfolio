import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

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
      width: double.infinity,
      height: double.infinity,
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
              CircularParticle(
                key: UniqueKey(),
                awayRadius: 80,
                numberOfParticles: 200,
                speedOfParticles: 0.3,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                onTapAnimation: true,
                particleColor: Colors.white.withAlpha(150),
                awayAnimationDuration: const Duration(milliseconds: 600),
                maxParticleSize: 8,
                isRandSize: true,
                isRandomColor: true,
                randColorList: [
                  Theme.of(context).primaryColor,
                  Colors.white.withAlpha(210),
                ],
                awayAnimationCurve: Curves.easeInOutBack,
                enableHover: true,
                hoverColor: Colors.white,
                hoverRadius: 90,
                connectDots: true, //not recommended
              ),
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
