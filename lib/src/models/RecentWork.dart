import 'package:flutter/material.dart';

class RecentWork {
  final String? image,
      imageDark,
      title,
      description,
      link,
      technology,
      duration,
      year,
      position;
  final Color? color;
  final int? id;
  final bool? owner;
  final String? downloads;

  RecentWork({
    this.id,
    this.image,
    this.imageDark,
    this.color,
    this.title,
    this.description,
    this.link,
    this.downloads,
    this.position,
    this.owner,
    this.technology,
    this.duration,
    this.year,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    description: "I created a New & Fresh Bank App",
    color: const Color(0xffff6d00),
    title: "ITU Bank - Chile",
    link:
        "https://play.google.com/store/apps/details?id=com.konylabs.ItauMobileBank",
    image: "assets/images/itu_app.gif",
    downloads: "500K+",
    position: "Semi Senior Developer",
    owner: false,
    technology: 'React Native',
    duration: '1 year',
    year: '2022',
  ),
  RecentWork(
    id: 2,
    description: "I created a New & Fresh Ecommerce App",
    color: const Color(0xff55b849),
    title: "Platanitos Ecommerce - Perú",
    link: "https://apps.apple.com/app/id1093153586",
    image: "assets/images/platanitos_app.gif",
    imageDark: "assets/images/platanitos_dark_app.gif",
    downloads: "2M+",
    position: "Team Leader Developer",
    owner: false,
    technology: 'Flutter',
    duration: '1 year',
    year: '2021',
  ),
  RecentWork(
    id: 3,
    description: "I added new features in this classic Retail app",
    color: const Color(0xff55b849),
    title: "Platanitos Retail - Perú",
    link:
        "https://play.google.com/store/apps/details?id=com.platanitos.platanitosapp",
    image: "assets/images/work_3.png",
    downloads: "250K+",
    position: "Mobile Developer",
    owner: false,
    technology: 'React Native',
    duration: '1 year',
    year: '2020',
  ),
  RecentWork(
    id: 4,
    description: "New & Fresh Looking Portfolio indeed at the end",
    color: Colors.lightBlue,
    title: "PickPointer Auto - Perú",
    link: "https://play.google.com/store/apps/details?id=com.pickpointer.app",
    image: "assets/images/pickpointer_app.gif",
    imageDark: "assets/images/pickpointer_dark_app.gif",
    downloads: "350+",
    position: "Mobile Developer",
    owner: true,
    technology: 'Flutter',
    duration: '1 year',
    year: '2022',
  ),
  RecentWork(
    id: 4,
    description: "",
    color: Colors.lightBlue,
    title: "Aves Argentinas App - Argentina",
    link: "",
    image: "assets/images/work_4.png",
    downloads: "50+",
    position: "Mobile Developer",
    owner: false,
    technology: 'Flutter',
    duration: '6 months',
    year: '2022',
  ),
];
