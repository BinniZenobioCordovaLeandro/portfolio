import 'package:bin_protfolio/src/core/components/fractionally_sized_box_component.dart';
import 'package:bin_protfolio/src/core/components/hireme_card.dart';
import 'package:bin_protfolio/src/core/components/section_title.dart';
import 'package:bin_protfolio/src/core/components/text_field_widget.dart';
import 'package:bin_protfolio/src/core/components/wrap_component.dart';
import 'package:bin_protfolio/src/models/skill.dart';
import 'package:bin_protfolio/src/sections/skill/components/skill_card.dart';
import 'package:flutter/material.dart';
import 'package:string_similarity/string_similarity.dart';

class SkillSection extends StatefulWidget {
  const SkillSection({
    super.key,
  });

  @override
  State<SkillSection> createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {
  TextEditingController textEditingController = TextEditingController();
  var filteredSkill = <Skill>[];
  String search = "";

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
              title: "My Skill",
              subTitle: "My proficient knowledge",
              color: Color(0xFFFFB100),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              child: FractionallySizedBoxComponent(
                child: TextFieldComponent(
                  controller: textEditingController,
                  labelText: 'Search:',
                  helperText: 'E.g.: React Native, Flutter, ...',
                  onChanged: (string) => {
                    setState(() {
                      Map<dynamic, Skill> mapSkills = {};
                      for (var element in skills) {
                        List<String> listString =
                            string.toLowerCase().split(" ");

                        for (var stringElement in listString) {
                          double? comparison = element.name
                              ?.toLowerCase()
                              .similarityTo(stringElement);
                          if (comparison != null && comparison >= 0.2) {
                            mapSkills[element.id] = element;
                          }
                        }
                      }
                      search = string;
                      filteredSkill =
                          mapSkills.entries.map((e) => e.value).toList();
                    })
                  },
                  textInputAction: TextInputAction.search,
                  suffixIcon: (search.isNotEmpty)
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              search = "";
                              textEditingController.clear();
                            });
                          },
                          icon: const Icon(Icons.clear_outlined),
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 1110,
              child: FractionallySizedBoxComponent(
                child: WrapComponent(
                  children: (search.isNotEmpty)
                      ? List.generate(
                          filteredSkill.length,
                          (index) => SkillCard(
                            skill: filteredSkill[index],
                            press: () {},
                          ),
                        )
                      : List.generate(
                          skills.length,
                          (index) => SkillCard(
                            skill: skills[index],
                            press: () {},
                          ),
                        ),
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
