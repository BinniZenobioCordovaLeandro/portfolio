import 'package:flutter/material.dart';

class Service {
  final int? id;
  final String? title, image;
  final Color? color;

  Service({
    this.id,
    this.title,
    this.image,
    this.color,
  });
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "App development",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "App, Bug fixing",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Code refactoring",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "App deployment",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
