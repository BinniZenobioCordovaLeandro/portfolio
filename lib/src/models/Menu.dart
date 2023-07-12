import 'package:flutter/material.dart';

class Menu {
  final int? id;
  final String? name;
  final IconData? icon;

  Menu({
    this.id,
    this.name,
    this.icon,
  });
}

// For demo list of service
List<Menu> menus = [
  Menu(
    id: 1,
    name: "home",
    icon: Icons.home_outlined,
  ),
  Menu(
    id: 2,
    name: "about",
    icon: Icons.person_outline_outlined,
  ),
  Menu(
    id: 3,
    name: "portfolio",
    icon: Icons.document_scanner_outlined,
  ),
  Menu(
    id: 4,
    name: "services",
    icon: Icons.design_services_outlined,
  ),
  Menu(
    id: 5,
    name: "skill",
    icon: Icons.person_search_sharp,
  ),
  Menu(
    id: 6,
    name: "testimonial",
    icon: Icons.feedback_outlined,
  ),
  Menu(
    id: 7,
    name: "contact",
    icon: Icons.contact_phone_outlined,
  ),
];
