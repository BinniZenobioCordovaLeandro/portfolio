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
  final WorkType? workType;

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
    this.workType,
  });
}

class WorkType {
  final int? id;
  final String? title;
  final Color? color;

  WorkType({
    this.id,
    this.title,
    this.color,
  });
}

List<WorkType> workType = [
  WorkType(
    id: 1,
    title: 'FullTime',
    color: Colors.blue,
  ),
  WorkType(
    id: 3,
    title: 'FreeLance',
    color: Colors.orange,
  ),
];

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    description:
        "I created App Banking to ITAU BANK with a modern design and features",
    color: const Color(0xffff6d00),
    title: "ITU Bank - Chile",
    link:
        "https://play.google.com/store/apps/details?id=com.konylabs.ItauMobileBank",
    image: "assets/images/itu_app.gif",
    downloads: "500K+",
    position: "Senior Mobile",
    technology: 'React Native',
    duration: '1 year',
    year: '2022 to now',
    workType: workType[0],
  ),
  RecentWork(
    id: 2,
    description:
        "Ecommerce App with modern appareance and easy to use for buy products and track delivery",
    color: const Color(0xff55b849),
    title: "Platanitos Ecommerce - Perú",
    link: "https://apps.apple.com/app/id1093153586",
    image: "assets/images/platanitos_app.gif",
    imageDark: "assets/images/platanitos_dark_app.gif",
    downloads: "2M+",
    position: "Team Leader Developer",
    technology: 'Flutter',
    duration: '1 year',
    year: '2021',
    workType: workType[0],
  ),
  RecentWork(
    id: 3,
    description: "I added new features in this classic Retail app",
    color: const Color(0xff55b849),
    title: "Platanitos Retail - Perú",
    link:
        "https://play.google.com/store/apps/details?id=com.platanitos.platanitosapp",
    image: "assets/images/platanitos_old_webapp.gif",
    downloads: "700K+",
    position: "Mobile Developer",
    technology: 'React Native',
    duration: '1 year',
    year: '2020',
    workType: workType[0],
  ),
  RecentWork(
    id: 4,
    description: "I build an app to travel in taxi with low cost",
    color: Colors.blueGrey,
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
    workType: workType[1],
  ),
  RecentWork(
    id: 4,
    description:
        "App for the Christian Community, to take courses and make appointments to Christian local events",
    color: Colors.blueAccent,
    title: "Agua Viva - Perú",
    link:
        "https://play.google.com/store/apps/details?id=com.comunidadcristianaaguaviva.ccaguaviva",
    image: "assets/images/aguaviva.png",
    downloads: "200+",
    position: "Mobile Developer",
    technology: 'Flutter',
    duration: '6 months',
    year: '2021',
    workType: workType[1],
  ),
  RecentWork(
    id: 5,
    description:
        "I made new features to this app to travel in TUK TUK,  easy to configure the travel and pick the best cost for you",
    color: Colors.yellow,
    title: "Pittigo - Perú",
    link: "https://play.google.com/store/apps/details?id=com.pittigo.cliente",
    image: "assets/images/pittigo.png",
    downloads: "50+",
    position: "Mobile Developer",
    technology: 'Flutter',
    duration: '2 months',
    year: '2021',
    workType: workType[1],
  ),
  RecentWork(
    id: 6,
    description: "",
    color: Colors.cyanAccent,
    title: "Aves Argentinas App - Argentina",
    link: "",
    image: "assets/images/work_4.png",
    downloads: "50+",
    position: "Mobile Developer",
    technology: 'Flutter',
    duration: '6 months',
    year: '2022',
    workType: workType[1],
  ),
];
