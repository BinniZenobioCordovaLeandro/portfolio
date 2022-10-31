import 'package:bin_protfolio/src/core/components/text_component.dart';
import 'package:bin_protfolio/src/core/helpers/launcher_link_helper.dart';
import 'package:bin_protfolio/src/models/Service.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    super.key,
    this.index,
  });

  final int? index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (services[widget.index!].link != null) {
          LauncherLinkHelper launcherLinkHelper = LauncherLinkHelper(
            url: services[widget.index!].link!,
          );
          launcherLinkHelper.launchInBrowser();
        }
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 3.00),
                blurRadius: 15,
                color: services[widget.index!].color ??
                    Colors.black.withOpacity(0.1),
              )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: const EdgeInsets.all(20.0 * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: services[widget.index!].color,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 3.00),
                      blurRadius: 13,
                      color: services[widget.index!].color ??
                          Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index!].image!,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20.0),
            TextComponent(
              services[widget.index!].title!,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
