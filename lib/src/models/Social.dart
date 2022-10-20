import 'package:flutter/material.dart';

class Social {
  final int? id;
  final String? name, image, link;
  final Color? color;

  Social({
    this.id,
    this.name,
    this.image,
    this.color,
    this.link,
  });
}

// For demo list of service
List<Social> socials = [
  Social(
    id: 1,
    name: "Skype",
    image: "assets/images/skype.png",
    color: const Color(0xFF00aff0),
    link: "live:binni_2000_cordova",
  ),
  Social(
    id: 2,
    name: "WhatsApp",
    image: "assets/images/whatsapp.png",
    color: const Color(0xFF25D366),
    link: "https://web.whatsapp.com/send?phone=51971581847",
  ),
  Social(
    id: 3,
    name: "Messenger",
    image: "assets/images/messenger.png",
    color: const Color(0xFF006AFF),
    link: "https://m.me/binnizenobio.cordovaleandro.9",
  ),
  Social(
    id: 4,
    name: "LinkedIn",
    image: "assets/images/linkedin.png",
    color: const Color(0xFF0072b1),
    link: "https://www.linkedin.com/in/binni-zenobio-leandro-a77000175/",
  ),
];
