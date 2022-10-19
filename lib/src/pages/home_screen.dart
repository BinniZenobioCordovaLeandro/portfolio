import 'package:bin_protfolio/src/core/scaffold_component.dart';
import 'package:bin_protfolio/src/sections/about/about_section.dart';
import 'package:bin_protfolio/src/sections/contact/contact_section.dart';
import 'package:bin_protfolio/src/sections/feedback/feedback_section.dart';
import 'package:bin_protfolio/src/sections/recent_work/recent_work_section.dart';
import 'package:bin_protfolio/src/sections/service/service_section.dart';
import 'package:bin_protfolio/src/pages/components/menu.dart';
import 'package:bin_protfolio/src/sections/topSection/top_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController homePageController = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      body: Stack(
        children: [
          PageView(
            controller: homePageController,
            onPageChanged: (int index) => setState(() {
              selectedIndex = index;
            }),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: const [
              TopSection(),
              Center(
                child: AboutSection(),
              ),
              ServiceSection(),
              RecentWorkSection(),
              FeedbackSection(),
              ContactSection(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: BottomTabMenu(
                selectedIndex: selectedIndex,
                onTap: (int index) {
                  print('tab $index index');
                  homePageController.animateToPage(
                    index,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOutCirc,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
