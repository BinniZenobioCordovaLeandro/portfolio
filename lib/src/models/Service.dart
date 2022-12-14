import 'package:flutter/material.dart';

class Service {
  final int? id;
  final String? title, image, link;
  final Color? color;

  Service({
    this.id,
    this.title,
    this.image,
    this.color,
    this.link,
  });
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "App development",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
    link:
        "https://web.whatsapp.com/send?phone=51971581847&text=I need you to build my app... ",
  ),
  Service(
    id: 2,
    title: "App, Bug fixing",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
    link:
        "https://web.whatsapp.com/send?phone=51971581847&text=I need you to fix bugs in my app...",
  ),
  Service(
    id: 3,
    title: "Code refactoring",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
    link:
        "https://web.whatsapp.com/send?phone=51971581847&text=I need you to upgrade my app...",
  ),
  Service(
    id: 4,
    title: "App deployment",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
    link:
        "https://web.whatsapp.com/send?phone=51971581847&text=I need you to deploy my app to stores...",
  ),
];
