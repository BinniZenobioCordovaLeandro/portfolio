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
    name: "Home",
    icon: Icons.home_outlined,
  ),
  Menu(
    id: 2,
    name: "About",
    icon: Icons.person_outline_outlined,
  ),
  Menu(
    id: 3,
    name: "Services",
    icon: Icons.design_services_outlined,
  ),
  Menu(
    id: 4,
    name: "Portfolio",
    icon: Icons.document_scanner_outlined,
  ),
  Menu(
    id: 5,
    name: "Testimonial",
    icon: Icons.feedback_outlined,
  ),
  Menu(
    id: 6,
    name: "Contact",
    icon: Icons.contact_phone_outlined,
  ),
];
