import 'package:flutter/material.dart';

class RecentWork {
  final String? image,
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
    image: "assets/images/work_1.png",
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
    link: "https://platanitos.com/app-stores",
    image: "assets/images/work_2.png",
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
    link: "https://platanitos.com",
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
    image: "assets/images/work_4.png",
    downloads: "350+",
    position: "Mobile Developer",
    owner: true,
    technology: 'Flutter',
    duration: '1 year',
    year: '2022',
  ),
];
